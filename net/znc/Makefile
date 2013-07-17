# $OpenBSD: Makefile,v 1.19 2013/07/17 07:19:38 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.0
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ssl stdc++

MAKE_FLAGS=	VERBOSE=1

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS= --disable-optimization

NO_TEST=	Yes

.include <bsd.port.mk>
