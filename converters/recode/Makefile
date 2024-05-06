COMMENT=	convert files between character sets and usages

V=		3.7.14
DISTNAME=	recode-$V
SHARED_LIBS +=	recode               1.0      # 10.12
REVISION=	0

CATEGORIES=	converters textproc

HOMEPAGE=	https://github.com/rrthomas/recode

# (L)GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl

SITES=		https://github.com/rrthomas/recode/releases/download/v$V/

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext,-runtime
TEST_DEPENDS=	lang/cython${MODPY_FLAVOR}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CYTHON=cython
TEST_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
