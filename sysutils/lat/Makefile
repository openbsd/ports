# $OpenBSD: Makefile,v 1.2 2010/04/01 07:20:17 ajacoutot Exp $

COMMENT=	LDAP Administration Tool

DISTNAME=	lat-1.2.3
PKGNAME=	${DISTNAME}p0

CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/ldap-at/

# GPLv2 - LGPLv2.1 - GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ldap-at/}

BUILD_DEPENDS=	::textproc/rarian \
		::x11/gnome/keyring \
		::x11/gnome/mono-gnome
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:yelp-*:x11/gnome/yelp \
		::x11/gnome/keyring \
		::x11/gnome/mono-gnome

# do not use the devel/gettext MODULE to prevent port-lib-depends-check
# from complaining about Extra: iconv intl
BUILD_DEPENDS+=	::devel/gettext
RUN_DEPENDS+=	::devel/gettext

MODULES=	lang/mono \
		textproc/intltool

USE_GMAKE=	Yes

DLLMAP_FILES=	gnome-keyring-glue/gnome-keyring-glue.dll.config

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-networkmanager=no

# XXX main window hangs on startup
#BUILDS_DEPENDS+= ::net/avahi,-mono
#RUN_DEPENDS+= ::net/avahi,-mono
CONFIGURE_ARGS=	--enable-avahi=no

.include <bsd.port.mk>
