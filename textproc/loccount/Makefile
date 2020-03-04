# $OpenBSD: Makefile,v 1.8 2020/03/04 16:05:51 kn Exp $

COMMENT =		count lines of codes in many languages

V =			2.9
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
WRKDIST =		${WRKDIR}/${DISTNAME}-637e87621156d494919e6738748291018e54aa28

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	tablegen.py

CONFIGURE_STYLE =	XXX: do not execute MODPY_BUILD_TARGET in python.port.mk:250

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
