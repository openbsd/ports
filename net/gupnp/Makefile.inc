# $OpenBSD: Makefile.inc,v 1.6 2013/03/11 12:24:02 jasper Exp $

CATEGORIES ?=		net devel

HOMEPAGE ?=		http://gupnp.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM?= 	Yes

EXTRACT_SUFX?=		.tar.xz

CONFIGURE_STYLE?=	gnu
CONFIGURE_ENV?=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
