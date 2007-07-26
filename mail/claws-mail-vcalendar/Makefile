# $OpenBSD: Makefile,v 1.1.1.1 2007/07/26 13:59:28 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	groupware plugin for Claws-mail

VERSION=	1.96
DISTNAME=	vcalendar-${VERSION}
PKGNAME=	claws-mail-vcalendar-${VERSION}
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=vcalendar
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

RUN_DEPENDS=	::mail/claws-mail
BUILD_DEPENDS=	${RUN_DEPENDS}

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender crypto fontconfig freetype m ssl z expat iconv intl \
		atk-1.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 curl idn

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
