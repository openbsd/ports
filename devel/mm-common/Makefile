# $OpenBSD: Makefile,v 1.5 2012/03/19 10:28:48 ajacoutot Exp $

COMMENT=	common build utilities for GNOME C++ binding libraries

GNOME_PROJECT=	mm-common
GNOME_VERSION=	0.9.5
REVISION=	0

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

.include <bsd.port.mk>
