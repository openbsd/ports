# $OpenBSD: Makefile,v 1.20 2017/04/17 14:21:13 ajacoutot Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.7
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	4.2

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ebml m ${LIBCXX}

LIB_DEPENDS=	textproc/libebml>=1.3.4

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
