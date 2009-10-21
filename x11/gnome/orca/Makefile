# $OpenBSD: Makefile,v 1.13 2009/10/21 12:28:39 jasper Exp $

COMMENT=		assistive technology for people with visual impairments

GNOME_VERSION=		2.28.1
GNOME_PROJECT=		orca

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/py-gnome \
			::x11/gnome/mag \
			::x11/gnome/speech \
			::x11/dbus-python

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-liblouis
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
