# $OpenBSD: Makefile,v 1.21 2000/03/24 22:11:46 espie Exp $

DISTNAME=	expect-5.31
CATEGORIES=	lang
NEED_VERSION=	1.223
MASTER_SITES=	http://expect.nist.gov/old/

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tk82.1.3:x11/tk82

SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.2 \
		--with-tclinclude=${PREFIX}/include/tcl8.2 \
		--with-tkconfig=${PREFIX}/lib/tk8.2 \
		--with-tkinclude=${PREFIX}/include/tk8.2

WRKDIST=	${WRKDIR}/${PKGNAME}
FAKE=		Yes

test:	build
	@cd ${WRKBUILD}; make test

.include <bsd.port.mk>
