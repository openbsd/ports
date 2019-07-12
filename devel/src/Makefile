# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:02 sthen Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-1.18
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	src

RUN_DEPENDS =		devel/grcs \
			devel/rcs-fast-import

TEST_DEPENDS =		devel/git \
			devel/pylint \
			shells/bash

USE_GMAKE =		Yes
NO_BUILD =		Yes

TEST_ENV =		PYLINTHOME=${WRKSRC}/.pylint.d
TEST_TARGET =		check

post-extract:
	sed -i	-e 's/rcs /grcs /g;s/ci /gci /g;s/co /gco /g' ${WRKSRC}/src

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src.1 ${PREFIX}/man/man1

# Disable sscs and python 3.x tests.
pre-test:
	sed -i	-e '/srctest -b sccs/d ' -e '/p python3/d' ${WRKSRC}/Makefile
	sed -i '1s,^#!/bin/sh,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/srctest
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
