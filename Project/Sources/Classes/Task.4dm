Class extends DataClass

exposed Function getName
	$0:="Rest API TODO"
	
	
	//create
exposed Function create
	C_OBJECT:C1216($1; $input)
	$input:=$1
	$task:=ds:C1482.Task.new()
	//$task:=New object()
	
	
	//$task:=$input
	$task.task:=$1.task
	$task.staringDate:=Date:C102($1.startingDate)
	$task.endingDate:=Date:C102($1.endingDate)
	$task.done:=$1.done
	$task.starting:=$1.starting
	
	$task.save()
	$0:=$task
	
	
	
	//update
exposed Function update
	C_OBJECT:C1216($1; $input)
	$input:=$1
	$task:=ds:C1482.Task.get($1.ID)
	$task.task:=$1.task
	$task.staringDate:=Date:C102($1.startingDate)
	$task.endingDate:=Date:C102($1.endingDate)
	$task.done:=$1.done
	$task.starting:=$1.starting
	$task.save()
	$0:=$task
	
	
	//delete
exposed Function delete
	//C_OBJECT($1; $input)
	//$input:=$1
	$task:=ds:C1482.Task.get($1.ID)
	$task.drop()
	$0:=$task
	
	
	//all
exposed Function ALL
	var $allTask : cs:C1710.Task
	//C_OBJECT($allTask)
	$allTask:=ds:C1482.Task.all()
	$0:=$allTask
	
	
	//one
exposed Function one
	
	$task:=ds:C1482.Task.get($1)
	$0:=$task
	
	
	