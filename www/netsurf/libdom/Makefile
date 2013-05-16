# $OpenBSD: Makefile,v 1.3 2013/05/16 20:48:53 rpe Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.0.1
REVISION =		0

SHARED_LIBS =		dom 0.0 #0.0.1

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/hubbub>=0.2.0 \
			www/netsurf/libwapcaplet>=0.2.0
WANTLIB += expat hubbub parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
