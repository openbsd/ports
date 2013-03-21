# $OpenBSD: Makefile,v 1.3 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=		logging API for C++

DISTNAME=		log4cplus-1.0.4
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  log4cplus             0.0 # 0.0

CATEGORIES=		devel
HOMEPAGE=		http://log4cplus.sourceforge.net/

# Apache License 2.0 + BSD style
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=log4cplus/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CXXFLAGS+=		-fPIC


pre-configure:
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor

.include <bsd.port.mk>
