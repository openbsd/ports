# $OpenBSD: Makefile.inc,v 1.5 2013/03/11 11:35:47 espie Exp $

CATEGORIES ?=		net devel

HOMEPAGE ?=		http://gupnp.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM?= 	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

EXTRACT_SUFX?=		.tar.xz

CONFIGURE_STYLE?=	gnu
CONFIGURE_ENV?=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
