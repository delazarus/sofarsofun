#pragma strict

var speed : float;

function Update () {
    if(Input.GetMouseButton(0))
    {
        transform.position.x -= Input.GetAxis("Mouse X") * speed * Time.deltaTime;
        transform.position.y -= Input.GetAxis("Mouse Y") * speed * Time.deltaTime;
    }
	
}
