interface Command {
	void run();
}

interface ReversibleCommand extend Command{
	void undo();
}

Command recent = ...;

if (recent instanceof ReversibleCommand) {
	ReversibleCommand downcasted = (ReversibleCommand) recent;
	downcasted.undo(); 
}

class Transaction {
	int value;

	Transaction(int value, Account credit, Account debit) {
		this.value = value;
		credit.addCredit(this);
		debit.addDebit(this);
	}

	int getValue() {
		return value;
	}

}

// Delegation
public void mouseDown(){
	switch (getTool()) {
		case SELECTING :
			//...
			break;
		case CREATING_RECTANGLE :
			//...
			break;
		case EDITING_TEXT :
			//...
			break;
		default :
			break;

	}
}

public void mouseDown() {
	getTool().mouseDown();
}

Graphic Editor
public void mouseDown() {
	tool.mouseDown(this);
}

RectangleTool 
public void mouseDown(GraphicEditor editor) {
	editor.add(new RectangleFigure());
}

GraphicEditor 
public void mouseDown(){
	tool.mouseDown();
}

RectangleTool
private GraphicEditor editor;
public RectangleTool(GraphicEditor editor) {
	this.editor = editor;
}

public void mouseDown()	{
	editor.add(new RectangleFigure()) {

	}
}

Pluggable Selector

String name;
public void runTest() throws Exception {
	Class[] noArguments = new Class[0];
	Method method = getClass().getMethod(name, noArguments);
	method.invoke(this, new Object[0]);

}



