# $OpenBSD: Makefile,v 1.8 2009/02/11 15:33:51 jasper Exp $

COMMENT=		wallpapers for GNOME

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		::devel/gettext

USE_LIBTOOL=		No
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
