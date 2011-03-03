# $OpenBSD: Makefile,v 1.12 2011/03/03 13:45:56 ajacoutot Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	0.1.7

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/gettext
RUN_DEPENDS=	devel/dconf

# don't inherit USE_LIBTOOL from the gnome MODULE
USE_LIBTOOL=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-silent-rules \
		--disable-schemas-compile

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig \
		itlocaledir=${PREFIX}/share/locale/

.include <bsd.port.mk>
