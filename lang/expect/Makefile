# $OpenBSD: Makefile,v 1.27 2000/07/18 17:59:48 espie Exp $

DISTNAME=	expect-5.31
CATEGORIES=	lang
NEED_VERSION=	1.317
MASTER_SITES=	http://expect.nist.gov/old/

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tk83.1.3:x11/tk/8.3

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.3 \
		--with-tclinclude=${PREFIX}/include/tcl8.3 \
		--with-tkconfig=${PREFIX}/lib/tk8.3 \
		--with-tkinclude=${PREFIX}/include/tk8.3

WRKDIST=	${WRKDIR}/${PKGNAME}

test:	build
	@cd ${WRKBUILD}; make test

.include <bsd.port.mk>
