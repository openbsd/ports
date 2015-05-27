# $OpenBSD: Makefile,v 1.14 2015/05/27 21:17:51 ajacoutot Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.4.2
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	4.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m stdc++

BUILD_DEPENDS=	textproc/libebml>=1.3.1

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
