using UnityEngine;
using System.Collections;

public class Chop : MonoBehaviour {
    public Rigidbody walker;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter( Collider c ) {
        WoodChunk chunk = c.GetComponent<WoodChunk>();
        if ( chunk ) {
            chunk.Hurt( Mathf.Abs(walker.angularVelocity.y) * -1f);
        }
    }
}
