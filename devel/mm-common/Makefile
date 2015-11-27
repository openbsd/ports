# $OpenBSD: Makefile,v 1.10 2015/11/27 11:31:14 ajacoutot Exp $

PKG_PARCH=		*

COMMENT=		common build utilities for GNOME C++ binding libraries

GNOME_PROJECT=		mm-common
GNOME_VERSION=		0.9.9

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CURL="${LOCALBASE}/bin/curl" \
			ac_cv_prog_WGET="${LOCALBASE}/bin/wget"

.include <bsd.port.mk>
