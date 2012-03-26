# $OpenBSD: Makefile,v 1.1.1.1 2012/03/26 09:06:34 sthen Exp $

COMMENT=		logging API for C++

DISTNAME=		log4cplus-1.0.4
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  log4cplus             0.0 # 0.0

CATEGORIES=		devel
HOMEPAGE=		http://log4cplus.sourceforge.net/

# Apache License 2.0 + BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=log4cplus/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CXXFLAGS+=		-fPIC

USE_LIBTOOL=		Yes

pre-configure:
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor

.include <bsd.port.mk>
