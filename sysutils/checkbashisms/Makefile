# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:29 espie Exp $

COMMENT=		check shell scripts for bash-specific constructs

DISTNAME=		checkbashisms-0.2
REVISION=		0
DISTFILES=
CATEGORIES=		sysutils devel

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
USE_GROFF =		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${FILESDIR}/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
