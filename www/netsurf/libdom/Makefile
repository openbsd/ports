# $OpenBSD: Makefile,v 1.6 2015/03/30 03:01:51 bentley Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.1.2

SHARED_LIBS =		dom 0.2 #0.1.2

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/hubbub>=0.3.1 \
			www/netsurf/libwapcaplet>=0.2.2
WANTLIB += expat hubbub parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
