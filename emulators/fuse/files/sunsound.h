/*	$OpenBSD: sunsound.h,v 1.1.1.1 2002/02/27 00:37:10 naddy Exp $	*/
/*	$RuOBSD: sunsound.h,v 1.1 2002/02/11 22:56:25 grange Exp $	*/

#ifndef FUSE_SUNSOUND_H
#define FUSE_SUNSOUND_H

int sunsound_init(int *, int *);
void sunsound_end(void);
void sunsound_frame(unsigned char *, int);

#endif /* FUSE_SUNSOUND_H */
