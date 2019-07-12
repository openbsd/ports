# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:40 sthen Exp $

COMMENT=		check shell scripts for bash-specific constructs

V=			2.0.0.2
REVISION=		0
DISTNAME=		checkbashisms
PKGNAME=		checkbashisms-2.0.0.2
EXTRACT_SUFX=
DIST_SUBDIR=		${PKGNAME}
WRKDIST=		${WRKDIR}
CATEGORIES=		sysutils devel

# GPLv2 only
PERMIT_PACKAGE=	Yes

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
