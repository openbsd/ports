# $OpenBSD: Makefile,v 1.6 2010/10/19 20:11:49 naddy Exp $

COMMENT=	network distribution package for CVS repositories

DISTNAME=	csup-20101019
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
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cpasswd.sh ${PREFIX}/bin/cpasswd

.include <bsd.port.mk>
