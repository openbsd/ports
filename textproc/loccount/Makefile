# $OpenBSD: Makefile,v 1.6 2019/09/27 15:38:39 kn Exp $

COMMENT =		count lines of codes in many languages

V =			2.8
DISTNAME =		loccount-${V}
CATEGORIES =		textproc

HOMEPAGE =		https://gitlab.com/esr/loccount

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# statically linked
WANTLIB =		c pthread

MASTER_SITES =		https://gitlab.com/esr/loccount/repository/

DISTFILES =		${DISTNAME}{${V}/archive}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/${DISTNAME}-7b453bb11473af641aac8e3f5616c91528431b9f

BUILD_DEPENDS =		lang/go \
			textproc/asciidoc

MAKE_ENV =		GOCACHE=${WRKDIR}/go-cache
ALL_TARGET =		loccount loccount.1
TEST_TARGET =		check

post-build:
	ln -sf ${WRKBUILD}/loccount{-${V}-*,}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/loccount ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/loccount.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
