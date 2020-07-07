# $OpenBSD: Makefile,v 1.40 2020/07/07 11:37:36 naddy Exp $

COMMENT=	ls(1) that can use color to display file attributes

VERSION=	6.5
DISTNAME=	ls-${VERSION}
PKGNAME=	colorls-${VERSION}
REVISION=	0
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://shell.uugrn.org/~naddy/

WANTLIB=	c curses util

WRKDIST=	${WRKDIR}/ls
NO_TEST=	Yes

# copy file and substitute a string near a CVS keyword
pre-patch:
	sed 's/^\.Dt LS/.Dt COLORLS/' ${WRKSRC}/ls.1 >${WRKSRC}/colorls.1

.include <bsd.port.mk>
