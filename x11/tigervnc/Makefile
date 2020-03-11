# $OpenBSD: Makefile,v 1.2 2020/03/11 15:55:12 sthen Exp $

COMMENT=	high performance, multi-platform VNC client and server

GH_ACCOUNT=	TigerVNC
GH_PROJECT=	tigervnc
GH_TAGNAME=	v1.10.1

CATEGORIES=	x11 net

HOMEPAGE=	https://tigervnc.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcursor Xdamage Xext
WANTLIB += Xfixes Xft Xinerama Xrandr Xrender Xtst c fltk fltk_images
WANTLIB += fontconfig gnutls iconv intl jpeg m z

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS=	-DMAN_DIR="${TRUEPREFIX}/man" \
		-DDOC_DIR="${TRUEPREFIX}/share/doc/tigervnc" \
		-DENABLE_PAM=OFF
CFLAGS+=	-I${X11BASE}/include
CXXFLAGS+=	-I${X11BASE}/include
NO_TEST=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext \
		security/gnutls \
		x11/fltk
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

# avoid conflict
post-install:
	mv ${PREFIX}/bin/vncviewer{,.tigervnc}
	mv ${PREFIX}/man/man1/vncviewer{,.tigervnc}.1

.include <bsd.port.mk>
