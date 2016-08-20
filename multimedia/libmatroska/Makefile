# $OpenBSD: Makefile,v 1.17 2016/08/20 12:01:15 ajacoutot Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.5
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	4.1

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ebml m stdc++

LIB_DEPENDS=	textproc/libebml>=1.3.4

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
