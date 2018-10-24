# $OpenBSD: Makefile,v 1.25 2018/10/24 14:28:08 sthen Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.8
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS=	matroska	4.2

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ebml m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	textproc/libebml>=1.3.5

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
