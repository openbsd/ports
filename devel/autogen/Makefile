COMMENT=	automatic text creation from templates
CATEGORIES=	devel

V=		5.16.2
DISTNAME=	autogen-${V}

SHARED_LIBS +=	opts                 28.0     # 36.5

HOMEPAGE=	https://autogen.sourceforge.net/
SITES=		${SITE_GNU:=autogen/rel${V}/}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp guile iconv intl ltdl m pthread xml2 z

BUILD_DEPENDS=	shells/bash

LIB_DEPENDS=	devel/gettext,-runtime \
		lang/guile \
		textproc/libxml

CONFIGURE_STYLE=	gnu

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--without-libregex \
		--includedir=${PREFIX}/include/autogen

MAKE_FLAGS+=	INFO_DEPS=

.include <bsd.port.mk>
