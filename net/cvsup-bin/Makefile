# $OpenBSD: Makefile,v 1.1.1.1 2000/06/11 18:21:34 espie Exp $

.if ${MACHINE_ARCH} == "i386"
VER=		16.1
.elif ${MACHINE_ARCH} == "sparc"
VER=		16.0
.endif
DISTNAME=	cvsup-bin-${VER}
CATEGORIES=    	net devel
NEED_VERSION=1.300

HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

ONLY_FOR_ARCHS=	i386 sparc

MAINTAINER=	naddy@unix-ag.uni-kl.de

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
.if ${MACHINE_ARCH} == "i386"
DISTFILES=	cvsup${GUI}-freebsd-ix86-aout-${VER}${EXTRACT_SUFX}
.elif ${MACHINE_ARCH} == "sparc"
DISTFILES=	cvsup${GUI}-sunos4-${VER}${EXTRACT_SUFX}
.endif

SUPDISTFILES=	cvsup-freebsd-ix86-aout-16.1.tar.gz \
		cvsup.nogui-freebsd-ix86-aout-16.1.tar.gz \
		cvsup-sunos4-16.0.tar.gz \
		cvsup.nogui-sunos4-16.0.tar.gz

.if ${MACHINE_ARCH} == "i386"
MANCOMPRESSED=	Yes
MAN1=		cvpasswd.1 cvsup.1
.endif

WRKSRC=		${WRKDIR}/cvsup${GUI}-bin-${VER}
INSTALL_STRIP=

.if !defined(NO_WARNINGS)
pre-fetch:
	@sh ${PKGDIR}/REQ ${PKGNAME} INSTALL
.endif

NO_BUILD=Yes

.if ${MACHINE_ARCH} == "i386"
do-configure:
	sed 's,@PREFIX@,${PREFIX},' ${FILESDIR}/cvsup.sh >${WRKSRC}/cvsup.sh
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvpasswd ${PREFIX}/bin
.if ${MACHINE_ARCH} == "i386"
	${INSTALL_SCRIPT} ${WRKSRC}/cvsup.sh ${PREFIX}/bin/cvsup
	${INSTALL_PROGRAM} ${WRKSRC}/cvsup ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/cvpasswd.1.gz ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cvsup.1.gz ${PREFIX}/man/man1
.elif ${MACHINE_ARCH} == "sparc"
	${INSTALL_PROGRAM} ${WRKSRC}/cvsup ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cvpasswd.1 ${PREFIX}/man/cat1/cvpasswd.0
	${INSTALL_MAN} ${WRKSRC}/cvsup.1 ${PREFIX}/man/cat1/cvsup.0
.endif

.include <bsd.port.mk>
