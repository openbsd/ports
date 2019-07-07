# $OpenBSD: Makefile,v 1.39 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		8

# GPLv2
PERMIT_PACKAGE=		Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
