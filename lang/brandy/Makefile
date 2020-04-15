# $OpenBSD: Makefile,v 1.4 2020/04/15 13:31:42 fcambus Exp $

COMMENT =	interpreter for BBC Basic (Basic V)

DISTNAME =	brandy-1.20.1
REVISION =	1

CATEGORIES =	lang

HOMEPAGE =	http://jaguar.orpheusweb.co.uk/branpage.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=brandy/}

LIB_DEPENDS +=	devel/sdl

CFLAGS +=	-I${LOCALBASE}/include/SDL
LDFLAGS +=	-L${LOCALBASE}/lib

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}" LDFLAGS="${LDFLAGS}"

MAKE_FILE =	makefile

NO_TEST =	Yes

post-build:
	cd ${WRKSRC}; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f makefile.text

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tbrandy ${PREFIX}/bin/brandy
	${INSTALL_PROGRAM} ${WRKSRC}/brandy ${PREFIX}/bin/brandy-sdl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/basic ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/messages ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/use ${PREFIX}/share/doc/brandy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brandy
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/brandy

.include <bsd.port.mk>
