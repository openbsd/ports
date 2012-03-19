# $OpenBSD: Makefile,v 1.31 2012/03/19 10:28:48 ajacoutot Exp $

COMMENT=		MIME and application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.18.0
CATEGORIES=		x11
REVISION=		5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

USE_LIBTOOL=		No
CONFIGURE_STYLE= 	gnu old

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
