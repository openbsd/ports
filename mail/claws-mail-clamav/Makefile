# $OpenBSD: Makefile,v 1.1.1.1 2008/02/13 13:25:50 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	clamav plugin for Claws Mail

VERSION=	3.3
DISTNAME=	clamav-${VERSION}
PKGNAME=	claws-mail-clamav-${VERSION}
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=clamav
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

RUN_DEPENDS=	:claws-mail->=3.3.0:mail/claws-mail
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	clamav::security/clamav

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 bz2 cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gmp gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre png z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
