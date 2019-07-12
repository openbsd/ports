# $OpenBSD: Makefile,v 1.23 2019/07/12 20:45:15 sthen Exp $

COMMENT=		wrapper class around the pcre library

DISTNAME=		pcre++-0.9.5
PKGNAME=		${DISTNAME}
REVISION =		8
SHARED_LIBS=		pcre++ 1.0
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		devel
HOMEPAGE=		http://www.daemon.de/PCRE

MASTER_SITES=		http://www.daemon.de/idisk/Apps/pcre++/

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

# XXX doesn't seem to actually link against libpcre?
LIB_DEPENDS =		devel/pcre
WANTLIB =		pcre m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=      	Yes

do-test:
	@cd ${WRKBUILD}/test && ./test testinput

.include <bsd.port.mk>
