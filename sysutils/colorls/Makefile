# $OpenBSD: Makefile,v 1.24 2013/03/11 11:41:29 espie Exp $

COMMENT=	ls that can use color to display file attributes

DISTNAME=	ls-5.0
PKGNAME=	color${DISTNAME}
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/

WRKDIST=	${WRKDIR}/ls
NO_TEST=	Yes

# copy file and substitute a string near a CVS keyword
pre-patch:
	sed 's/^\.Dt LS/.Dt COLORLS/' ${WRKSRC}/ls.1 >${WRKSRC}/colorls.1

.include <bsd.port.mk>
