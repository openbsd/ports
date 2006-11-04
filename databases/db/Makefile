# $OpenBSD: Makefile,v 1.34 2006/11/04 12:44:26 espie Exp $

     SUBDIR+= v3
.if ${MACHINE_ARCH} == "i386" || make(describe)
     SUBDIR+= v4,java
.else
     SUBDIR+= v4
.endif

.include <bsd.port.subdir.mk>
