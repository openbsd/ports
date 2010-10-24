# $OpenBSD: Makefile,v 1.15 2010/10/24 21:15:34 ajacoutot Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	lightweight freedesktop-compliant panel/taskbar/clock

DISTNAME=	tint2-0.11
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	tint-0.11
REVISION=	2
CATEGORIES=	x11

HOMEPAGE=	http://code.google.com/p/tint2/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	Imlib2.>=2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb \
		xcb-render xcb-render-util z

MASTER_SITES=	http://tint2.googlecode.com/files/

LIB_DEPENDS=	::graphics/imlib2 \
		::devel/pango \
		::x11/gtk+2
RUN_DEPENDS=	::x11/py-gtk2 \
		::devel/desktop-file-utils

MODULES=	devel/cmake lang/python

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_ARGS=	-DMANDIR="${PREFIX}/man"

pre-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'\
		${WRKSRC}/src/tint2conf/tintwizard.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tint2/
	@mv ${WRKINST}/${SYSCONFDIR}/xdg/tint2/tint2rc \
		${PREFIX}/share/examples/tint2/

.include <bsd.port.mk>
