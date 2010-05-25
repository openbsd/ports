# $OpenBSD: Makefile,v 1.2 2010/05/25 14:05:44 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	remove attachments from emails

VERSION =	1.0.11
DISTNAME =	att_remover-${VERSION}
PKGNAME =	claws-mail-attremover-${VERSION}p0
MASTER_SITES =	http://www.claws-mail.org/downloads/plugins/
CATEGORIES =	mail
DIST_SUBDIR =	claws

HOMEPAGE =	http://www.claws-mail.org/plugins.php
MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

MODULES =	devel/gettext

LIB_DEPENDS =	gdk-x11-2.0.>=1403,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

RUN_DEPENDS =	:claws-mail->=3.7.4:mail/claws-mail
BUILD_DEPENDS =	${RUN_DEPENDS}

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs xcb xcb-render \
		xcb-render-util z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--disable-static

.include <bsd.port.mk>
