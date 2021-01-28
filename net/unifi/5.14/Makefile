# $OpenBSD: Makefile,v 1.1 2021/01/28 22:42:39 sthen Exp $

V=		5.14.23
SNAPPY_V=	1.1.7.5
REVISION=	1

post-install:
	mv ${INSTDIR}/lib/snappy-java-${SNAPPY_V}.jar \
	    ${INSTDIR}/lib/snappy-java-1.1.7.3.jar

.include <bsd.port.mk>
