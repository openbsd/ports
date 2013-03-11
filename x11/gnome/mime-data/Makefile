# $OpenBSD: Makefile,v 1.33 2013/03/11 11:46:11 espie Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

CONFIGURE_STYLE= 	gnu old

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
