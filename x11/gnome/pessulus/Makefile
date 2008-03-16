# $OpenBSD: Makefile,v 1.1.1.1 2008/03/16 17:49:49 jasper Exp $

COMMENT=		lockdown editor for GNOME

GNOME_PROJECT=		pessulus
GNOME_VERSION=		2.16.4

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
			::x11/gnome/py-gnome
RUN_DEPENDS=		::devel/gettext \
			::www/epiphany \
			::x11/gnome/panel \
			::x11/gnome/py-gnome \
			::x11/gnome/yelp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
