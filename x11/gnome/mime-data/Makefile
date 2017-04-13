# $OpenBSD: Makefile,v 1.38 2017/04/13 07:38:45 ajacoutot Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		8

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
