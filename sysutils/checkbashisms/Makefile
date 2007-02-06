# $OpenBSD: Makefile,v 1.1.1.1 2007/02/06 22:22:16 jasper Exp $

COMMENT=		"check shell scripts for bash-specific constructs"

DISTNAME=		checkbashisms-0.1
DISTFILES=
CATEGORIES=		sysutils devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${FILESDIR}/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
