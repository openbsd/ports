# $OpenBSD: Makefile,v 1.40 2019/06/27 13:51:01 solene Exp $

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.7.4
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	https://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread ssl z ${COMPILER_LIBCXX}

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS+=	-DWANT_CYRUS=NO \
			-DWANT_I18N=NO \
			-DWANT_ICU=NO

NO_TEST=	Yes

.include <bsd.port.mk>
