# $OpenBSD: Makefile,v 1.34 2017/07/27 09:55:45 sthen Exp $

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.6.5
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/
REVISION=	0

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread ssl z
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =	gcc


MAKE_FLAGS=	VERBOSE=1

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-charset \
		--disable-optimization
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_GNUMAKE=gmake

NO_TEST=	Yes

.include <bsd.port.mk>
