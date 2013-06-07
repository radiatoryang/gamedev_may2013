using UnityEngine;
using System.Collections;

public class ClickMove : MonoBehaviour {

    public CharacterController controller; // assign in inspector

    // this variable is private because only ClickMove.cs needs to know about it
    Vector3 destination;

    void Start() {
        destination = controller.transform.position;
    }
	
	// Update is called once per frame
	void Update () {
        // initialize raycastHit information
        RaycastHit rayHit = new RaycastHit();

        // convert mouse cursor position into a ray
        Ray ray = Camera.main.ScreenPointToRay( Input.mousePosition );
        
        // if the player is holding down the mouse button AND
        // cursor is over terrain, then tell controller to move
        if ( Input.GetMouseButton(0) && Physics.Raycast(ray, out rayHit, 10000f) ) {
            destination = rayHit.point; // update our current destination
        }

        // remember: the formula for vector subtraction is "B - A", B being the destination and A being the start position
        Vector3 moveVector = destination - controller.transform.position;

        // this debug function shows the direction the character is moving
        Debug.DrawRay( controller.transform.position, moveVector.normalized );

        // SimpleMove automatically applies gravity
        controller.SimpleMove( moveVector.normalized * 5f );
	}
}
