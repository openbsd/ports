# $OpenBSD: Makefile,v 1.5 2009/03/28 18:12:50 naddy Exp $

COMMENT=		lockdown editor for GNOME

GNOME_PROJECT=		pessulus
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p2

HOMEPAGE=		http://live.gnome.org/Pessulus

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

DESKTOP_FILES=		Yes

BUILD_DEPENDS=		::devel/gettext \
			::x11/gnome/py-gnome-desktop
RUN_DEPENDS=		::devel/gettext \
			::www/epiphany \
			::x11/gnome/panel \
			::x11/gnome/py-gnome-desktop \
			::x11/gnome/yelp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
