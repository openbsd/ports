# $OpenBSD: Makefile,v 1.20 2017/07/26 22:45:30 sthen Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.4
REVISION =	1
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	ebml	3.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m ${COMPILER_LIBCXX}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
