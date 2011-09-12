# $OpenBSD: Makefile,v 1.17 2011/09/12 07:26:20 ajacoutot Exp $

COMMENT=		wallpapers for GNOME

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		3.0.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		devel/gettext

USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
