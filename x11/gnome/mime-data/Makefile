# $OpenBSD: Makefile,v 1.28 2011/01/18 20:08:24 ajacoutot Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		4

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

USE_LIBTOOL=		No
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		pkgconfigdir=${PREFIX}/lib/pkgconfig/ \
			sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
