# $OpenBSD: Makefile,v 1.19 2000/02/15 05:04:37 turan Exp $

DISTNAME=	expect-5.30
CATEGORIES=	lang
MASTER_SITES=	http://expect.nist.gov/old/
NEED_VERSION=	1.191

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	tk80.1.5:${PORTSDIR}/x11/tk80

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0

WRKDIST=	${WRKDIR}/${PKGNAME}

test:	build
	@(cd ${WRKBUILD}; make test)

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
