# $OpenBSD: Makefile,v 1.1.1.1 2016/03/14 19:04:40 awolk Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.49
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}
CATEGORIES =	news

HOMEPAGE =	http://multimail.sourceforge.net/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

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
