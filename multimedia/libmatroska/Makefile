# $OpenBSD: Makefile,v 1.22 2017/07/23 09:26:28 espie Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.7
REVISION =	0
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
