# $OpenBSD: Makefile,v 1.9 2016/09/13 19:15:03 naddy Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.3.0

SHARED_LIBS =		dom 0.2 #0.1.2

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/hubbub>=0.3.3 \
			www/netsurf/libwapcaplet>=0.3.0
WANTLIB += expat hubbub iconv parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
