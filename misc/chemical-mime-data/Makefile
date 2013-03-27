# $OpenBSD: Makefile,v 1.1.1.1 2013/03/27 20:03:02 zhuk Exp $

PKG_ARCH =		*
COMMENT =		MIME types and icons for chemical applications
V =			0.1.94
DISTNAME =		chemical-mime-data-${V}
CATEGORIES =		misc
HOMEPAGE =		http://chemical-mime.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chemical-mime/}

BUILD_DEPENDS =		textproc/libxslt \
			x11/gnome/mime-data

RUN_DEPENDS =		misc/shared-mime-info \
			x11/gtk+2,-guic \

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-update-database
CONFIGURE_ENV =		DATADIRNAME=share

.include <bsd.port.mk>
