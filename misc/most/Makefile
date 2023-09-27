COMMENT=	browse or page through a text file

DISTNAME=	most-5.2.0
CATEGORIES=	misc

HOMEPAGE=	https://www.jedsoft.org/most/

SITES=		https://www.jedsoft.org/releases/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m slang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

NO_TEST=	Yes

.include <bsd.port.mk>
