COMMENT=	COBOL compiler, formerly known as OpenCOBOL

DISTNAME =	gnucobol-3.2

SHARED_LIBS +=	cob	6.0	# 6.0

CATEGORIES =	lang

HOMEPAGE =	https://gnucobol.sourceforge.io/

# compiler: GPLv3+
# run-time library: LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cjson curses db gmp iconv intl lzma m pthread xml2
WANTLIB += z

SITES =		${SITE_GNU:=gnucobol/}

# base makeinfo chokes on gnucobol texinfo files
BUILD_DEPENDS =	print/texinfo

LIB_DEPENDS =	databases/db/v4 \
		devel/gettext,-runtime \
		devel/gmp \
		devel/cjson \
		textproc/libxml

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS =  --with-db --with-json=cjson --with-xml2

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
