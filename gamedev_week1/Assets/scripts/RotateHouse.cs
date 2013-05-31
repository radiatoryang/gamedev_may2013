using UnityEngine;
using System.Collections;

public class RotateHouse : MonoBehaviour {
	
	public float rotateSpeed = 5f;

	// Use this for initialization
	void Start () {
	
	}
	
	// 1 FRAME per second? Time.deltaTime = 1f;
	// 10 FRAMES PER SECOND? Time.deltaTime = 0.1f;
	
	// Update is called once per frame
	void Update () {
		transform.Rotate( 0f, rotateSpeed * Time.deltaTime, 0f);
	}
}
