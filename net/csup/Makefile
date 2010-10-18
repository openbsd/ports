# $OpenBSD: Makefile,v 1.5 2010/10/18 18:36:46 espie Exp $

COMMENT=	network distribution package for CVS repositories

DISTNAME=	csup-20090407
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
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat
USE_GROFF =	Yes

.include <bsd.port.mk>
