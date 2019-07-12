# $OpenBSD: Makefile,v 1.2 2019/07/12 20:51:29 sthen Exp $

COMMENT =	very lightweight image viewer for X11
DISTNAME =	xli-1.17.0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11 graphics

HOMEPAGE =	http://www.boomerangsworld.de/cms/worker/download/other.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext c jpeg m png

MASTER_SITES =	http://www.boomerangsworld.de/cms/worker/downloads/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

MAKE_FILE =	Makefile.std
MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include -DHAVE_GUNZIP" \
		LIBS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lX11 -lXext -ljpeg -lm -lpng"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xli ${PREFIX}/bin
	@cd ${PREFIX}/bin && \
		ln -sf xli xsetbg && \
		ln -sf xli xview
	${INSTALL_PROGRAM} ${WRKSRC}/xlito ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xli.man ${PREFIX}/man/man1/xli.1
	@cd ${PREFIX}/man/man1 && \
		ln -sf xli.1 xsetbg.1 && \
		ln -sf xli.1 xview.1
	${INSTALL_MAN} ${WRKSRC}/xlito.man ${PREFIX}/man/man1/xlito.1

.include <bsd.port.mk>
