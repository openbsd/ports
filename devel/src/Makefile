# $OpenBSD: Makefile,v 1.20 2020/07/03 21:12:53 sthen Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-1.28
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	src

RUN_DEPENDS =		devel/grcs \
			devel/rcs-fast-import

TEST_DEPENDS =		devel/git \
			devel/pylint \
			shells/bash
# tests run with both py2+3
TEST_DEPENDS +=		lang/python/2.7

USE_GMAKE =		Yes
NO_BUILD =		Yes

TEST_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM} \
			PYLINTHOME=${WRKSRC}/.pylint.d
TEST_TARGET =		check

post-extract:
	sed -i	-e 's/rcs /grcs /g;s/ci /gci /g;s/co /gco /g' ${WRKSRC}/src
	sed -i '1s,^#!/bin/sh,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/srctest

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src.1 ${PREFIX}/man/man1

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
