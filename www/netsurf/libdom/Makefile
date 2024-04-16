COMMENT =		W3C DOM implementation

NETSURF_PROJECT =	libdom
NETSURF_VERSION =	0.4.2

SHARED_LIBS =		dom 2.1 #0.4.2

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/hubbub>=0.3.4 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += expat hubbub iconv parserutils wapcaplet

TEST_DEPENDS =		devel/p5-Switch \
			textproc/p5-Libxml \
			textproc/p5-XML-XPath

.include <bsd.port.mk>
