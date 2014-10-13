# $OpenBSD: Makefile,v 1.5 2014/10/13 09:29:20 bentley Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.1.1

SHARED_LIBS =		dom 0.2 #0.1.1

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/hubbub>=0.3.0 \
			www/netsurf/libwapcaplet>=0.2.1
WANTLIB += expat hubbub parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
