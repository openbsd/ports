# $OpenBSD: Makefile,v 1.9 2013/04/27 17:56:38 sthen Exp $

COMMENT=		check shell scripts for bash-specific constructs

V=			2.0.0.2
DISTNAME=		checkbashisms
PKGNAME=		checkbashisms-2.0.0.2
EXTRACT_SUFX=
DIST_SUBDIR=		${PKGNAME}
WRKDIST=		${WRKDIR}
CATEGORIES=		sysutils devel

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=checkbaskisms/$V/}

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-extract:
	cp ${FULLDISTDIR}/checkbashisms ${WRKDIR}/

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/checkbashisms \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${FILESDIR}/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
