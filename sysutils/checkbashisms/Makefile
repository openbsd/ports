# $OpenBSD: Makefile,v 1.4 2009/02/14 08:53:21 jasper Exp $

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

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${FILESDIR}/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
