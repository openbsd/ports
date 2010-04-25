# $OpenBSD: Makefile,v 1.17 2010/04/25 14:43:19 ajacoutot Exp $

COMMENT=		assistive technology for people with visual impairments

GNOME_PROJECT=		orca
GNOME_VERSION=		2.30.1

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/py-gnome \
			::x11/gnome/mag \
			::x11/gnome/speech \
			::x11/dbus-python \
			::devel/gettext

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
