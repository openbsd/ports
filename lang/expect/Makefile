# $OpenBSD: Makefile,v 1.16 2000/01/01 07:10:58 brad Exp $

DISTNAME=	expect-5.30
CATEGORIES=	lang
MASTER_SITES=	http://expect.nist.gov/old/

NEED_VERSION=	1.73

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tk80.1.5:${PORTSDIR}/x11/tk80

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0

WRKSRC=	${WRKDIR}/${PKGNAME}

test:	build
	@(cd ${WRKBUILD}; make test)

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
