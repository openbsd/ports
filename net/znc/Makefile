# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:58 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.0
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
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-optimization

NO_TEST=	Yes

.include <bsd.port.mk>
