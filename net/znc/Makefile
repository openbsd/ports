# $OpenBSD: Makefile,v 1.43 2020/11/27 16:40:04 solene Exp $

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.8.2
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	https://znc.in/

MAINTAINER=	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto icuuc icudata m pthread ssl z ${COMPILER_LIBCXX}

LIB_DEPENDS=	textproc/icu4c

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=	-DWANT_CYRUS=NO \
			-DWANT_I18N=NO \
			-DWANT_ICU=YES

NO_TEST=	Yes

.include <bsd.port.mk>
