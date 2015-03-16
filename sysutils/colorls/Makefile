# $OpenBSD: Makefile,v 1.30 2015/03/16 14:17:48 naddy Exp $

COMMENT=	ls that can use color to display file attributes

VERSION=	5.7
DISTNAME=	ls-${VERSION}
PKGNAME=	colorls-${VERSION}
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/

WANTLIB=	c curses util

WRKDIST=	${WRKDIR}/ls
NO_TEST=	Yes

# copy file and substitute a string near a CVS keyword
pre-patch:
	sed 's/^\.Dt LS/.Dt COLORLS/' ${WRKSRC}/ls.1 >${WRKSRC}/colorls.1

.include <bsd.port.mk>
