# $OpenBSD: Makefile,v 1.4 2011/09/12 12:07:25 jasper Exp $

COMMENT=	common build utilities for GNOME C++ binding libraries

GNOME_PROJECT=	mm-common
GNOME_VERSION=	0.9.5

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	x11/gnome

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_WGET="" \
		ac_cv_prog_CURL=""

FAKE_FLAGS=	shared_pkgconfigdir=${TRUEPREFIX}/lib/pkgconfig

.include <bsd.port.mk>
