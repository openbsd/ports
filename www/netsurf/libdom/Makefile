# $OpenBSD: Makefile,v 1.14 2019/08/09 22:37:28 bentley Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.4.0

SHARED_LIBS =		dom 1.1 #0.4.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/hubbub>=0.3.4 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += expat hubbub iconv parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
