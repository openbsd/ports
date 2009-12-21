# $OpenBSD: Makefile,v 1.9 2009/12/21 18:03:19 ajacoutot Exp $

COMMENT=		lockdown editor for GNOME

GNOME_PROJECT=		pessulus
GNOME_VERSION=		2.28.0
PKGNAME=		${DISTNAME}p0

HOMEPAGE=		http://live.gnome.org/Pessulus

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

DESKTOP_FILES=		Yes

# help files are provided by gnome-user-docs
MODGNOME_HELP_FILES=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/gettext \
			::x11/gnome/py-gnome-desktop
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
