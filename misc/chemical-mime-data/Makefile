# $OpenBSD: Makefile,v 1.3 2013/03/28 07:49:32 ajacoutot Exp $

PKG_ARCH =		*
COMMENT =		MIME types and icons for chemical applications
DISTNAME =		chemical-mime-data-0.1.94
CATEGORIES =		misc
HOMEPAGE =		http://chemical-mime.sourceforge.net/
REVISION =		0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chemical-mime/}

MODULES =		textproc/intltool

BUILD_DEPENDS =		graphics/ImageMagick \
			textproc/libxslt \
			x11/gnome/mime-data

RUN_DEPENDS =		misc/shared-mime-info \
			x11/gnome/mime-data \
			x11/gtk+2,-guic

AUTOCONF_VERSION=	2.61
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--disable-update-database

.include <bsd.port.mk>
