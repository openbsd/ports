# $OpenBSD: Makefile.inc,v 1.7 2019/07/13 10:59:27 sthen Exp $

CATEGORIES ?=		net devel

HOMEPAGE ?=		http://gupnp.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE?=	Yes

EXTRACT_SUFX?=		.tar.xz

CONFIGURE_STYLE?=	gnu
CONFIGURE_ENV?=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
