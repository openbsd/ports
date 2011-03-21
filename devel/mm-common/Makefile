# $OpenBSD: Makefile,v 1.2 2011/03/21 12:36:18 ajacoutot Exp $

COMMENT=	common build utilities for GNOME C++ binding libraries

GNOME_PROJECT=	mm-common
GNOME_VERSION=	0.9.4

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_WGET="" \
		ac_cv_prog_CURL=""

FAKE_FLAGS=	shared_pkgconfigdir=${TRUEPREFIX}/lib/pkgconfig

.include <bsd.port.mk>
