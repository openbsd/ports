# $OpenBSD: Makefile,v 1.4 2001/04/14 11:36:18 naddy Exp $

COMMENT=	"network file distribution system, optimized for CVS"
ONLY_FOR_ARCHS=	sparc

VER=		16.0
DISTNAME=	cvsup-bin-${VER}
CATEGORIES=    	net devel
NEED_VERSION=	1.363
HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/development/CVSup/binaries/ \
		ftp://ftp.cs.tu-berlin.de/pub/FreeBSD/development/CVSup/binaries
MASTER_SITES0=	ftp://sites.inka.de/W3775/unix/distfiles/

DISTFILES=	cvsup${GUI}-sunos4-${VER}.tar.gz \
		cvsup-examples-1.0.tar.gz:0

SUPDISTFILES=	cvsup-sunos4-${VER}.tar.gz \
		cvsup.nogui-sunos4-${VER}.tar.gz \
		cvsup-examples-1.0.tar.gz:0

FLAVORS=	no_x11
FLAVOR?=
.if ${FLAVOR:L:Mno_x11}
GUI=.nogui
.else
GUI=
.endif

WRKSRC=		${WRKDIR}/cvsup${GUI}-bin-${VER}
INSTALL_STRIP=

.if !defined(NO_WARNINGS)
pre-fetch:
	@sh ${PKGDIR}/REQ ${PKGNAME} INSTALL
.endif

NO_BUILD=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvpasswd ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cvsup ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cvpasswd.1 ${PREFIX}/man/cat1/cvpasswd.0
	${INSTALL_MAN} ${WRKSRC}/cvsup.1 ${PREFIX}/man/cat1/cvsup.0
	cd ${WRKDIR}/cvsup-examples-1.0 && ${MAKE} install

.include <bsd.port.mk>
