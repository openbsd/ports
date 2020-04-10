# $OpenBSD: Makefile,v 1.4 2020/04/10 07:54:11 ajacoutot Exp $

COMMENT=	minimalist and read-only implementation of SMB

VER=		0.3.2
DISTNAME=	libdsm-${VER}
CATEGORIES=	devel
MASTER_SITES=	https://github.com/videolabs/libdsm/releases/download/v${VER}/

SHARED_LIBS=	dsm	0.0

HOMEPAGE=	https://videolabs.github.io/libdsm/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread iconv tasn1

LIB_DEPENDS=	converters/libiconv \
		security/libtasn1

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
