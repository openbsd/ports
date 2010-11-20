# $OpenBSD: Makefile,v 1.6 2010/11/20 17:22:40 espie Exp $

COMMENT=		check shell scripts for bash-specific constructs

DISTNAME=		checkbashisms-0.2
DISTFILES=
CATEGORIES=		sysutils devel

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
USE_GROFF =		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${FILESDIR}/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
