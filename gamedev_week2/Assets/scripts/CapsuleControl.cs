using UnityEngine;
using System.Collections;

//
// RIGIDBODY-BASED CONTROLLER!
//

public class CapsuleControl : MonoBehaviour {

    public float speed = 5f;
    public float turnRate = 5f;

    public float jumpHeight = 10f;
    bool shouldIJump = false;

    void Update() {
        bool grounded = Physics.Raycast( transform.position, -transform.up, 1.2f );

        // feed jump input from Update() into FixedUpdate()
        // we do this because Input refreshes every Update(), but Physics refreshes every FixedUpdate()
        if ( Input.GetButtonDown( "Jump" ) && grounded ) {
            shouldIJump = true;
        }
    }

    // Fixed Update is called once per physics-frame
    void FixedUpdate () {
        if (shouldIJump)
            rigidbody.AddForce( transform.up * jumpHeight, ForceMode.Impulse );

        // grab virtual joystick (from -1 to 1) and apply forward motion
        if ( Mathf.Abs( Input.GetAxis( "Vertical") ) > 0.1f ) {
            rigidbody.AddForce( transform.forward * speed * Input.GetAxis("Vertical"), ForceMode.VelocityChange );
        }

        // grab virtual joystick number (from -1 to 1) and apply appropriate left/right rotation
        if ( Mathf.Abs( Input.GetAxis( "Horizontal" ) ) > 0.1f  ) {
            transform.Rotate( 0f, Input.GetAxis( "Horizontal" ) * turnRate, 0f );
        }
    }
}
