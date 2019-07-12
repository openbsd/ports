# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:16 sthen Exp $

COMMENT =	NASE A60 Algol interpreter
DISTNAME =	a60-0.23a
CATEGORIES =	lang

HOMEPAGE =	https://www.bertnase.de/a60/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xaw Xext Xmu Xt c m

MASTER_SITES =	https://www.bertnase.de/a60/

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =	FLAGS="${CFLAGS} -Dunix" \
		LIBDIR="${PREFIX}/share/a60" \
		XINCLUDE="-I${X11BASE}/include" \
		XLIB="-L${X11BASE}/lib -lXaw -lXt -lSM -lICE -lXext -lXmu -lX11"
ALL_TARGET =	all xa60

FAKE_FLAGS =		prefix="${DESTDIR}${PREFIX}" \
			LIBDIR="${DESTDIR}${PREFIX}/share/a60"
INSTALL_TARGET =	install xa60-install

post-install:
	${INSTALL_DATA} ${WRKSRC}/a60.info ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/a60
	${INSTALL_DATA} ${WRKSRC}/RRA60.ps ${PREFIX}/share/doc/a60
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/a60
	${INSTALL_DATA} ${WRKSRC}/examples/*.a60 ${PREFIX}/share/examples/a60

.include <bsd.port.mk>
