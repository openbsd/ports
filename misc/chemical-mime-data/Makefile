# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:48 sthen Exp $

PKG_ARCH =		*
COMMENT =		MIME types and icons for chemical applications
DISTNAME =		chemical-mime-data-0.1.94
CATEGORIES =		misc
HOMEPAGE =		http://chemical-mime.sourceforge.net/
REVISION =		3

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chemical-mime/}

MODULES =		textproc/intltool

BUILD_DEPENDS =		graphics/ImageMagick \
			textproc/libxslt \
			x11/gnome/mime-data

RUN_DEPENDS =		misc/shared-mime-info \
			x11/gnome/mime-data \
			x11/gtk+3,-guic

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-update-database

.include <bsd.port.mk>
