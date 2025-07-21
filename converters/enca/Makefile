COMMENT=		detect character set and encoding of text files

DISTNAME=		enca-1.19
CATEGORIES=		converters textproc
REVISION=		2

SHARED_LIBS +=  enca                 0.0      # 5.1

# https://github.com/nijel/enca
HOMEPAGE=		https://cihar.com/software/enca/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c iconv intl m pthread recode

SITES=			https://dl.cihar.com/enca/

BUILD_DEPENDS=		converters/p5-Unicode-Map8
LIB_DEPENDS=		converters/recode

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-rpath \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-librecode=${LOCALBASE}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
