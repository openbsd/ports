COMMENT=	convert files between character sets and usages

V=		3.7.15
DISTNAME=	recode-$V
SHARED_LIBS +=	recode               2.0      # 10.15

CATEGORIES=	converters textproc

HOMEPAGE=	https://github.com/rrthomas/recode

# (L)GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl pthread

SITES=		https://github.com/rrthomas/recode/releases/download/v$V/

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext,-runtime
TEST_DEPENDS=	lang/cython

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CYTHON=cython
TEST_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
