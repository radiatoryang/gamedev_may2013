using UnityEngine;
using System.Collections;

public class ScreenShake2000 : MonoBehaviour {

    Vector3 basePosition;

	// Use this for initialization
	void Start () {
        basePosition = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
        if ( Input.GetKeyDown( KeyCode.K ) ) {
            StartCoroutine( Shake(transform, 50f, 1f) ); // you need to use StartCoroutine() to start coroutines!
        }
	}

    // public, so that other scripts can call this function
    public void ShakeThis( Transform objectToShake ) {
        StartCoroutine( Shake( objectToShake, 50f, 1f ) );
    }

    IEnumerator Shake( Transform objectToShake, float shakeIntensity, float shakeDuration) {
        float t = 1f; // 1 = full shake intensity, 0 = no shaking at all
        Vector3 basePosition = objectToShake.localPosition;
        while ( t > 0f ) {       // for every frame...

            //if ( Input.GetKeyDown( KeyCode.X ) ) // if we need to stop a coroutine, do it manually
            //    break; // "break" immediately breaks out of a while() loop no matter what

            t -= Time.deltaTime / shakeDuration; // shrink "t" a bit, every frame... after 1 second, t will be 0
            objectToShake.localPosition = basePosition
                                      + ( transform.right * Mathf.Sin( Time.time * shakeIntensity ) ) * t // horizontal
                                      + ( transform.up * Mathf.Sin( Time.time * shakeIntensity ) ) * t; // vertical
            yield return 0;      // wait a frame
        }
        // after everything is done, reset camera back to basePosition
        transform.localPosition = basePosition;
    }
}
