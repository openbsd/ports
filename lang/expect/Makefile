# $OpenBSD: Makefile,v 1.26 2000/07/18 07:14:15 turan Exp $

DISTNAME=	expect-5.31
CATEGORIES=	lang
NEED_VERSION=	1.230
MASTER_SITES=	http://expect.nist.gov/old/

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# autoconf is required by this port. it is not need to generate the 
# configure script.
LIB_DEPENDS=	tk83.1.3:x11/tk/8.3
BUILD_DEPENDS=	autoconf::devel/autoconf

SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.3 \
		--with-tclinclude=${PREFIX}/include/tcl8.3 \
		--with-tkconfig=${PREFIX}/lib/tk8.3 \
		--with-tkinclude=${PREFIX}/include/tk8.3

WRKDIST=	${WRKDIR}/${PKGNAME}
FAKE=		Yes

test:	build
	@cd ${WRKBUILD}; make test

.include <bsd.port.mk>
