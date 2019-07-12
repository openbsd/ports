# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:28 sthen Exp $

COMMENT=	C library for manipulating tar files

GH_ACCOUNT=	tklauser
GH_PROJECT=	libtar
GH_TAGNAME=	v1.2.20

SHARED_LIBS=	tar	0.1	# unknown

CATEGORIES=	archivers devel

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c z

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoreconf

# XXX no tls without pthread
CONFIGURE_ENV +=	ac_cv_tls=none

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11

NO_TEST=		Yes

.include <bsd.port.mk>
