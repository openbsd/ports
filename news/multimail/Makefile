# $OpenBSD: Makefile,v 1.2 2016/09/22 12:57:18 fcambus Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.49
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}
REVISION =	0

CATEGORIES =	news

HOMEPAGE =	http://multimail.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c curses m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=multimail/}

RUN_DEPENDS =	archivers/unzip \
		archivers/zip

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mm.1 ${PREFIX}/man/man1/multimail.1

.include <bsd.port.mk>
