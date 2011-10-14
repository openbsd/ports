# $OpenBSD: Makefile,v 1.62 2011/10/14 07:05:24 ajacoutot Exp $

COMMENT =	small, fast & usable window manager

V =		3.4.11.2
DISTNAME =	openbox-${V}
REVISION =	2
SHARED_LIBS +=	obparser	9.1 # .21.7
SHARED_LIBS +=	obrender	9.1 # .21.7

CATEGORIES =	x11

HOMEPAGE =	http://openbox.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE SM X11 X11-xcb Xau Xcursor Xext Xfixes Xft Xinerama
WANTLIB += Xrandr Xrender c expat ffi fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0 pangoft2-1.0
WANTLIB += pangoxft-1.0 pcre pthread startup-notification-1 xcb
WANTLIB += xcb-aux xml2 z

MASTER_SITES =	${HOMEPAGE}dist/openbox/

MODULES =	devel/gettext \
		lang/python

RUN_DEPENDS =	devel/py-xdg \
		devel/desktop-file-utils
LIB_DEPENDS +=	devel/pango \
		textproc/libxml \
		devel/startup-notification

MAKE_FLAGS =	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"
FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/openbox"
SUBST_VARS =	V

USE_GROFF =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
MODPY_RUNDEP =	No

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		--docdir=${PREFIX}/share/examples/openbox
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@chmod +x ${WRKSRC}/install-sh
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/data/autostart.sh.in
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/tools/xdg-autostart/xdg-autostart
	
.include <bsd.port.mk>
