# $OpenBSD: Makefile,v 1.24 2000/03/27 18:17:28 espie Exp $

DISTNAME=	expect-5.30
CATEGORIES=	lang
NEED_VERSION=	1.230
MASTER_SITES=	http://expect.nist.gov/old/

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tk80.1.5::x11/tk/8.0

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0

WRKDIST=	${WRKDIR}/${PKGNAME}

test:	build
	@cd ${WRKBUILD}; make test

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
