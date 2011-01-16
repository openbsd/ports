# $OpenBSD: Makefile,v 1.7 2011/01/16 19:13:40 naddy Exp $

COMMENT=	network distribution package for CVS repositories

DISTNAME=	csup-20101019
REVISION=	0
CATEGORIES=	net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/
EXTRACT_SUFX=	.tgz

WANTLIB=	c crypto pthread z

WRKDIST=	${WRKDIR}/csup
ALL_TARGET=	depend all

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/csup ${PREFIX}/bin/csup
	${INSTALL_MAN} ${WRKSRC}/csup.1 ${PREFIX}/man/man1/csup.1
	${INSTALL_SCRIPT} ${WRKSRC}/cpasswd.sh ${PREFIX}/bin/csuppasswd
	${INSTALL_MAN} ${WRKSRC}/cpasswd.1 ${PREFIX}/man/man1/csuppasswd.1

.include <bsd.port.mk>
