# $OpenBSD: Makefile,v 1.13 2019/12/20 17:19:35 sthen Exp $

COMMENT=		logging API for C++

# XXX tried updating to 2.0.4 but net/kea doesn't exit properly
# TODO: try 1.2.2
DISTNAME=		log4cplus-1.2.0
EXTRACT_SUFX=		.tar.bz2
REVISION=		1

SHARED_LIBS +=  log4cplus             2.0 # 0.0

CATEGORIES=		devel
HOMEPAGE=		http://log4cplus.sourceforge.net/

# Apache License 2.0 + BSD style
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=log4cplus/}

MODULES=		devel/cmake
#CXXFLAGS+=		-fPIC

.include <bsd.port.mk>
