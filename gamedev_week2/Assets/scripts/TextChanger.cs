using UnityEngine;
using System.Collections;

public class TextChanger : MonoBehaviour {

    TextMesh textMesh;
    Light myLight;

    public Transform destination; // assign in inspector

	// Use this for initialization
	void Start () {
        textMesh = GetComponent<TextMesh>();
        myLight = GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {
        // draw a line between this object's position and the Destination's position
        Debug.DrawLine( transform.position, destination.position );

        // set the "text" variable of the TextMesh to Vector3 of GameObject to the Destination
        textMesh.text = (destination.position - transform.position).ToString();

        // this code does the same exact thing as the thing above
        Vector3 distance = destination.position - transform.position;
        textMesh.text = distance.ToString();

        // make the object bounce up and down
        // transform.position = transform.position + ( new Vector3( 0f, 1f, 0f ) * Mathf.Sin( Time.time ) ) * Time.deltaTime;
        transform.position += ( new Vector3( 0f, 1f, 0f ) * Mathf.Sin( Time.time ) ) * Time.deltaTime;

        // if: after 5 seconds AND the sound is not already playing, THEN play the sound on the AudioSource
        if ( Time.time > 5f && GetComponent<AudioSource>().isPlaying == false ) {
            GetComponent<AudioSource>().Play();
        }

        // after 5 seconds, turn the light OFF
        if ( Time.time > 5f ) {
            myLight.enabled = false;
        }

    }
}
