# $OpenBSD: Makefile,v 1.7 2016/01/28 12:29:54 sthen Exp $

COMMENT=		logging API for C++

DISTNAME =		log4cplus-1.2.0
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  log4cplus             2.0 # 0.0

CATEGORIES=		devel
HOMEPAGE=		http://log4cplus.sourceforge.net/

# Apache License 2.0 + BSD style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=log4cplus/}

MODULES=		devel/cmake
#CXXFLAGS+=		-fPIC

.include <bsd.port.mk>
