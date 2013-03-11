# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:24 espie Exp $

COMMENT=		wrapper class around the pcre library

DISTNAME=		pcre++-0.9.5
PKGNAME=		${DISTNAME}
REVISION =		1
SHARED_LIBS=		pcre++ 1.0

CATEGORIES=		devel
HOMEPAGE=		http://www.daemon.de/PCRE

MASTER_SITES=		ftp://ftp.daemon.de/scip/Apps/pcre++/

MAINTAINER=		Tomasz Bak <openbsdpl@wp.pl>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS =		devel/pcre
WANTLIB =		pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=      	Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes

do-test:
	@cd ${WRKBUILD}/test && ./test testinput

.include <bsd.port.mk>
