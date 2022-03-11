COMMENT-main=	X11 keyboard accessibility tool
COMMENT-gui=	GUI for xkbset

V=		0.6
DISTNAME=	xkbset-${V}
PKGNAME-main=	xkbset-${V}
PKGNAME-gui=	xkbset-gui-${V}

CATEGORIES=	x11

HOMEPAGE=	http://faculty.missouri.edu/~stephen/software/\#xkbset

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://faculty.missouri.edu/~stephen/software/xkbset/

MAKE_FLAGS=	X11BASE="${X11BASE}"

FAKE_FLAGS=	X11PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

MULTI_PACKAGES=	-main -gui

WANTLIB-main=	X11 c

RUN_DEPENDS-gui=x11/xkbset x11/p5-Tk

NO_TEST=	Yes

.include <bsd.port.mk>
