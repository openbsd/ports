# $OpenBSD: Makefile,v 1.21 2017/09/04 08:01:05 ajacoutot Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.5
CATEGORIES=	textproc
MASTER_SITES=	https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ebml	3.1

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m ${COMPILER_LIBCXX}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
