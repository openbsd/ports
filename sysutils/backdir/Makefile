# $OpenBSD: Makefile,v 1.1.1.1 2013/05/13 23:10:20 jturner Exp $

COMMENT =		backs up files in a directory

V =			20130513
DISTNAME =		backdir_${V}
PKGNAME =		backdir-${V}
CATEGORIES =		sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://ab1jx.webs.com/calcs/backdir/index.html
MASTER_SITES =		http://ab1jx.webs.com/calcs/backdir/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MAKE_FLAGS =		CC="${CC}"
ALL_TARGET =		cf

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
