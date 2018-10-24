# $OpenBSD: Makefile,v 1.22 2018/10/24 14:28:11 sthen Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.5
CATEGORIES=	textproc
MASTER_SITES=	https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS=	ebml	3.1

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
