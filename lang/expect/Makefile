# $OpenBSD: Makefile,v 1.14 1999/08/24 01:56:58 brad Exp $

DISTNAME=	expect
PKGNAME=	expect-5.30
CATEGORIES=	lang
MASTER_SITES=	http://expect.nist.gov/

NEED_VERSION=	1.73

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

WRKSRC=		${WRKDIR}/${PKGNAME}
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0

test:
	@(cd ${WRKBUILD}; make test)

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
