# $OpenBSD: Makefile,v 1.15 2015/10/24 05:17:33 ajacoutot Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.3
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	4.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ebml m stdc++

LIB_DEPENDS=	textproc/libebml>=1.3.2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
