COMMENT=	convert files between character sets and usages

V=		3.7.12
DISTNAME=	recode-$V
SHARED_LIBS +=	recode               1.0      # 10.12

CATEGORIES=	converters textproc

HOMEPAGE=	https://github.com/rrthomas/recode

# (L)GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl

MASTER_SITES=	https://github.com/rrthomas/recode/releases/download/v$V/

MODULES=	lang/python
MODPY_RUNDEP=	No

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
