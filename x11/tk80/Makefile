# $OpenBSD: Makefile,v 1.23 2000/03/20 20:16:38 espie Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $

DISTNAME=	tk8.0.5
PKGNAME=	tk-8.0.5
CATEGORIES=	x11 tk80
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_0


MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80.1.5:lang/tcl80

SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS+=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-tcl="${PREFIX}/lib/tcl8.0"
CONFIGURE_ENV=	PORTSDIR=${PORTSDIR} 

WRKDIST=	${WRKDIR}/${DISTNAME}/unix
FAKE=		Yes

# Sneaky
post-install:
	perl -pi.bak -e 's/\$$\{DESTDIR\}//;' ${PREFIX}/lib/tk8.0/tkConfig.sh 

test:	build
	@cd ${WRKBUILD} && make test

.include <bsd.port.mk>
