# $OpenBSD: Makefile,v 1.2 2000/07/11 01:07:53 naddy Exp $

VER=		16.1
DISTNAME=	cvsup-bin-${VER}
CATEGORIES=    	net devel
NEED_VERSION=	1.312

HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

ONLY_FOR_ARCHS=	i386

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=
.if ${FLAVOR:L:Mno_x11}
GUI=.nogui
.else
GUI=
.endif

MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/development/CVSup/binaries/ \
		ftp://ftp.cs.tu-berlin.de/pub/FreeBSD/development/CVSup/binaries
DISTFILES=	cvsup${GUI}-freebsd-ix86-aout-${VER}.tar.gz

SUPDISTFILES=	cvsup-freebsd-ix86-aout-${VER}.tar.gz \
		cvsup.nogui-freebsd-ix86-aout-${VER}.tar.gz

MANCOMPRESSED=	Yes
MAN1=		cvpasswd.1 cvsup.1

WRKSRC=		${WRKDIR}/cvsup${GUI}-bin-${VER}
INSTALL_STRIP=

.if !defined(NO_WARNINGS)
pre-fetch:
	@sh ${PKGDIR}/REQ ${PKGNAME} INSTALL
.endif

NO_BUILD=	Yes

do-configure:
	sed 's,@PREFIX@,${PREFIX},' ${FILESDIR}/cvsup.sh >${WRKSRC}/cvsup.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvpasswd ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsup.sh ${PREFIX}/bin/cvsup
	${INSTALL_PROGRAM} ${WRKSRC}/cvsup ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/cvpasswd.1.gz ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cvsup.1.gz ${PREFIX}/man/man1

.include <bsd.port.mk>
