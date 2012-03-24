# $OpenBSD: Makefile,v 1.13 2012/03/24 21:42:58 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-0.204
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c cares crypto m ssl stdc++

LIB_DEPENDS=	net/libcares

MAKE_FLAGS=	VERBOSE=1

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-optimization
CONFIGURE_ENV=	ac_cv_path_GNUMAKE=gmake

NO_REGRESS=	Yes

.include <bsd.port.mk>
