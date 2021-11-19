# $OpenBSD: Makefile,v 1.1 2021/11/19 10:01:02 sthen Exp $

UNIT_MODNAME=	perl

REVISION=	0

WANTLIB=	c m perl
MODULES=	perl

post-configure:
	cd ${WRKSRC} && ./configure perl

.include <bsd.port.mk>
