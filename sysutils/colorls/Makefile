# $OpenBSD: Makefile,v 1.17 2009/12/04 15:44:44 nicm Exp $

COMMENT=	ls that can use color to display file attributes

DISTNAME=	ls-4.6
PKGNAME=	color${DISTNAME}p0
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/

WRKDIST=	${WRKDIR}/ls
NO_REGRESS=	Yes

# copy file and substitute a string near a CVS keyword
pre-patch:
	sed 's/^\.Dt LS/.Dt COLORLS/' ${WRKSRC}/ls.1 >${WRKSRC}/colorls.1

.include <bsd.port.mk>
