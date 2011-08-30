# $OpenBSD: Makefile.inc,v 1.4 2011/08/30 07:57:05 jasper Exp $

CATEGORIES ?=		net devel

HOMEPAGE ?=		http://gupnp.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM?= 	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

EXTRACT_SUFX?=		.tar.xz

CONFIGURE_STYLE?=	gnu
CONFIGURE_ENV?=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
