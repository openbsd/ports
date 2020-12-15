# $OpenBSD: Makefile,v 1.6 2020/12/15 18:43:42 fcambus Exp $

COMMENT=	COBOL compiler, formerly known as OpenCOBOL

DISTNAME =	gnucobol-3.1.1

SHARED_LIBS +=	cob	5.0	# 5.0

CATEGORIES =	lang

HOMEPAGE =	http://www.opencobol.org/

# compiler: GPLv3+
# run-time library: LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses db gmp iconv intl m

MASTER_SITES =	${MASTER_SITE_GNU:=gnucobol/}

# base makeinfo chokes on gnucobol texinfo files
BUILD_DEPENDS =	print/texinfo

LIB_DEPENDS =	databases/db/v4 \
		devel/gettext,-runtime \
		devel/gmp

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
