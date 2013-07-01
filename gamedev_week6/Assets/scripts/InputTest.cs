using UnityEngine;
using System.Collections;

public class InputTest : MonoBehaviour {

    public ScreenShake shake;
    public ScreenFade fade;

    void Start() {
        StartCoroutine( AttractMode() );
    }
	
	// Update is called once per frame
	void Update () {
        if ( Input.GetKeyDown( KeyCode.S ) ) {
            shake.Shake();
        }
	}

    IEnumerator AttractMode() {
        while ( !Input.GetKey( KeyCode.Space ) ) {
            guiText.text = "PRESS SPACE TO BEGIN";
            yield return 0;
        }
        guiText.text = "GAME STARTED!";
    }
}
