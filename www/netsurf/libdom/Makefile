# $OpenBSD: Makefile,v 1.1.1.1 2013/05/03 07:30:10 bentley Exp $

COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.0.1

CATEGORIES =		www
SHARED_LIBS =		dom 0.0 #0.0.1

LIB_DEPENDS =		www/netsurf/hubbub>=0.2.0 \
			www/netsurf/libwapcaplet>=0.2.0
WANTLIB += expat hubbub iconv parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
