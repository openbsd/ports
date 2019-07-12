# $OpenBSD: Makefile,v 1.48 2019/07/12 20:51:21 sthen Exp $

COMMENT =	clone of rxvt with Unicode and Xft support

DISTNAME =	rxvt-unicode-9.22
REVISION =	10
CATEGORIES =	x11
FIX_EXTRACT_PERMISSIONS =	Yes

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://dist.schmorp.de/rxvt-unicode/ \
		http://dist.schmorp.de/rxvt-unicode/Attic/

HOMEPAGE =	http://software.schmorp.de/pkg/rxvt-unicode.html

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xft Xmu Xrender Xt c fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 glib-2.0 gobject-2.0 intl m
WANTLIB += perl startup-notification-1 z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/startup-notification \
		graphics/gdk-pixbuf2

FAKE_FLAGS =	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-256-color \
			--enable-perl \
			--enable-pixbuf \
			--enable-startup-notification \
			--enable-unicode3 \
			--enable-utmp \
			--enable-wtmp
CONFIGURE_ENV +=	CPPFLAGS="-I${X11BASE}/include" \
			pt_cv_tty_group=yes

.include <bsd.port.mk>
