using UnityEngine;
using System.Collections;

public class WoodChunk : MonoBehaviour {
    public float woodHealth;
    float startHealth = 100f;

	// Use this for initialization
	void Start () {
        woodHealth = startHealth;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void Hurt( float amount ) {
        woodHealth -= amount;

        float ratio = woodHealth / startHealth;
        transform.localScale = new Vector3( ratio, 1f, ratio );

        if ( woodHealth < 0f ) {
            Destroy( this.gameObject );
        }
            
    }
}
