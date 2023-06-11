COMMENT=	simple PNG decoding and encoding library

GH_ACCOUNT=	randy408
GH_PROJECT=	libspng
GH_TAGNAME=	v0.7.4
CATEGORIES=	graphics

SHARED_LIBS+=	spng			0.0 # 0.0

HOMEPAGE=	https://libspng.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	m z

MODULES=	devel/meson

CONFIGURE_ARGS+=	-Denable_opt=false

.include <bsd.port.mk>
