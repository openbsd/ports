# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:18 sthen Exp $

COMMENT=	COBOL compiler, formerly known as OpenCOBOL

DISTNAME =	gnucobol-2.2
REVISION =	1

SHARED_LIBS +=	cob	4.0	# 4.0

CATEGORIES =	lang

HOMEPAGE =	http://www.opencobol.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# compiler: GPLv3+
# run-time library: LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses db gmp iconv intl m

MASTER_SITES =	${MASTER_SITE_GNU:=gnucobol/}

LIB_DEPENDS =	databases/db/v4 \
		devel/gettext,-runtime \
		devel/gmp

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
