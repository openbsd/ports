# $OpenBSD: Makefile,v 1.12 1999/03/15 02:44:29 espie Exp $
#

DISTNAME=	expect
PKGNAME=	expect-5.28
CATEGORIES=	lang tcl80 tk80

NEED_VERSION=	1.73

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	http://expect.nist.gov/

LIB_DEPENDS=	tk80.1:${PORTSDIR}/x11/tk80

SEPARATE_BUILD=concurrent
WRKSRC=		${WRKDIR}/expect-5.28

GNU_CONFIGURE=	yes
CONFIGURE_ARGS= --with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

test:
	@(cd ${WRKBUILD}; make test)

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
