# $OpenBSD: Makefile,v 1.34 2013/06/01 19:43:39 ajacoutot Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		6

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

CONFIGURE_STYLE= 	gnu old

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
