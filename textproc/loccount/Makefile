# $OpenBSD: Makefile,v 1.2 2018/04/14 23:01:01 sthen Exp $

COMMENT =		count lines of codes in many languages

V =			1.2
REVISION =		0
DISTNAME =		loccount-${V}
CATEGORIES =		textproc

HOMEPAGE =		https://gitlab.com/esr/loccount

MAINTAINER =		Klemens Nanni <kl3@posteo.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# statically linked
WANTLIB =		c pthread

MASTER_SITES =		${HOMEPAGE}/repository/

DISTFILES =		${DISTNAME}{${V}/archive}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/${DISTNAME}-8c629ffb306e04d8bbcd89366f8328040daa0fde

BUILD_DEPENDS =		lang/go \
			textproc/asciidoc

ALL_TARGET =		loccount loccount.1
TEST_TARGET =		check

post-build:
	ln -sf ${WRKBUILD}/loccount{-${V}-*,}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/loccount ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/loccount.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
