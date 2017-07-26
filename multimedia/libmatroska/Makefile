# $OpenBSD: Makefile,v 1.23 2017/07/26 22:45:27 sthen Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.7
REVISION =	1
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	4.2

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ebml m ${COMPILER_LIBCXX}

LIB_DEPENDS=	textproc/libebml>=1.3.4

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
