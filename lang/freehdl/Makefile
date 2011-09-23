# $OpenBSD: Makefile,v 1.2 2011/09/23 13:06:26 jasper Exp $

COMMENT=	open-source (C++ generating) VHDL simulator

DISTNAME=	freehdl-0.0.7
CATEGORIES=	lang cad

SHARED_LIBS +=  ieee                      0.0 # 0.0
SHARED_LIBS +=  freehdl-cdfggen           0.0 # 0.0
SHARED_LIBS +=  freehdl-fire              0.0 # 0.0
SHARED_LIBS +=  freehdl-kernel            0.0 # 0.0
SHARED_LIBS +=  freehdl-std               0.0 # 0.0
SHARED_LIBS +=  freehdl-vaul              0.0 # 0.0

HOMEPAGE=	http://www.freehdl.seul.org/

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/~enaroska/

WANTLIB += c m stdc++

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

# Configure checks for gnu libtool, but the build will use "our" libtool
BUILD_DEPENDS=  devel/libtool

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
