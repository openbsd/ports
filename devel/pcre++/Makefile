# $OpenBSD: Makefile,v 1.13 2015/06/17 07:49:51 bentley Exp $

COMMENT=		wrapper class around the pcre library

DISTNAME=		pcre++-0.9.5
PKGNAME=		${DISTNAME}
REVISION =		3
SHARED_LIBS=		pcre++ 1.0

CATEGORIES=		devel
HOMEPAGE=		http://www.daemon.de/PCRE

MASTER_SITES=		http://www.daemon.de/idisk/Apps/pcre++/

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS =		devel/pcre
WANTLIB =		pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=      	Yes
USE_GROFF =		Yes

do-test:
	@cd ${WRKBUILD}/test && ./test testinput

.include <bsd.port.mk>
