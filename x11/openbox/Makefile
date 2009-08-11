# $OpenBSD: Makefile,v 1.48 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT =	small, fast & usable window manager

DISTNAME =	openbox-3.4.7.2
PKGNAME =	${DISTNAME}p4
SHARED_LIBS +=	obparser	8.0 # .21.2
SHARED_LIBS +=	obrender	8.0 # .21.2
CATEGORIES =	x11

HOMEPAGE =	http://icculus.org/openbox/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ICE SM X11 Xext Xft Xinerama Xrandr Xrender c \
		fontconfig freetype m z glib-2.0 gmodule-2.0 \
		gobject-2.0 Xau Xcursor Xdmcp Xfixes expat pcre \
		pthread-stubs xcb

MASTER_SITES =	http://offload1.icculus.org/openbox/releases/

MODULES =	devel/gettext \
		lang/python

RUN_DEPENDS =	::devel/py-xdg
LIB_DEPENDS +=	pango-1.0,pangoxft-1.0,pangoft2-1.0::devel/pango \
		xml2.>=6::textproc/libxml \
		startup-notification-1.>=1::devel/startup-notification

MAKE_FLAGS =	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"
FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/openbox"

USE_X11 =	Yes
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
