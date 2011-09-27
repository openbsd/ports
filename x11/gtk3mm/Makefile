# $OpenBSD: Makefile,v 1.5 2011/09/27 12:57:26 ajacoutot Exp $

COMMENT=	C++ interface for gtk3+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	3.2.0

PKGNAME=	gtk3mm-${GNOME_VERSION}

CATEGORIES=	devel x11

SHARED_LIBS +=  gdkmm-3.0            1.0      # 2.0
SHARED_LIBS +=  gtkmm-3.0            1.0      # 2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/atk2mm \
		devel/pangomm>=2.28 \
		x11/gtk+3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
