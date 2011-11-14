# $OpenBSD: Makefile,v 1.8 2011/11/14 23:00:10 naddy Exp $

COMMENT=	network distribution package for CVS repositories

DISTNAME=	csup-20111114
CATEGORIES=	net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/

WANTLIB=	c crypto pthread z

WRKDIST=	${WRKDIR}/csup
ALL_TARGET=	depend all

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/csup ${PREFIX}/bin/csup
	${INSTALL_MAN} ${WRKSRC}/csup.1 ${PREFIX}/man/man1/csup.1
	${INSTALL_SCRIPT} ${WRKSRC}/cpasswd.sh ${PREFIX}/bin/csuppasswd
	${INSTALL_MAN} ${WRKSRC}/cpasswd.1 ${PREFIX}/man/man1/csuppasswd.1

.include <bsd.port.mk>
