using UnityEngine;
using System.Collections;

public class Walk : MonoBehaviour {

    Vector3 moveVector = Vector3.zero;
    Vector3 moveRotation = Vector3.zero;
    float yRotation;
    float yMax = 80f;
    float xTorque = 40f;
    float speed = 3.5f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        // reset moveVector each frame
        moveVector = -rigidbody.velocity * 0.5f;
        moveVector += transform.forward * Input.GetAxis( "Vertical" ) * speed;
        moveVector += transform.right * Input.GetAxis( "Horizontal" ) * speed;

        // mouselook
        moveRotation = new Vector3( 0f, Input.GetAxis( "Mouse X" ) * xTorque, 0f );
        yRotation += -Input.GetAxis( "Mouse Y" );
        yRotation = Mathf.Clamp( yRotation, -yMax, yMax );
        Camera.main.transform.localRotation = Quaternion.Euler( yRotation, 0f, -Input.GetAxis("Horizontal") * 2f );
	}

    void FixedUpdate() {
        rigidbody.AddForce( moveVector, ForceMode.VelocityChange );
        rigidbody.AddTorque( moveRotation );
        Debug.Log( rigidbody.angularVelocity.y );
    }
}
