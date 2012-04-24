/*
 * $OpenBSD: template.ino,v 1.1 2012/04/24 06:37:32 jasper Exp $
 *
 * Arduino projects run something like this:
 *	main() {
 *		init(); // arduino private setup
 *		setup(); // your setup goes here
 *		while(1) {
 *			loop(); // your main loop
 *		}
 *	}
 *
 * Arduino reference is at ${TRUEPREFIX}/share/doc/arduino/reference/
 */

#ifdef __cplusplus
extern "C" {
#endif

void setup(void) {
	/* your code here */
	return;
}

void loop(void) {
	/* more of your code here */
	return ;
}

#ifdef __cplusplus
}
#endif
