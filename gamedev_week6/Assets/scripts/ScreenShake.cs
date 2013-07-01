using UnityEngine;
using System.Collections;

public class ScreenShake : MonoBehaviour {

    Vector3 basePosition;

	// Use this for initialization
	void Start () {
        basePosition = transform.localPosition;
	}

    public void Shake() {
        Shake( 50f, 1f );
    }

    public void Shake( float intensity, float duration ) {
        StartCoroutine( ShakeCoroutine( intensity, duration ) );
    }

    IEnumerator ShakeCoroutine( float intensity, float duration ) {
        float t = 1f;
        while ( t > 0f ) {
            t -= Time.deltaTime / duration;
            transform.localPosition = basePosition + t * (transform.right * Mathf.Sin( Time.time * intensity ) + transform.up * Mathf.Sin( Time.time * 1.1f * intensity));
            yield return 0;
        }
        transform.localPosition = basePosition;
    }
}
