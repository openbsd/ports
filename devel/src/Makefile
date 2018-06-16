# $OpenBSD: Makefile,v 1.15 2018/06/16 15:52:46 rpe Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-1.18

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	src

RUN_DEPENDS =		devel/grcs \
			devel/rcs-fast-import

TEST_DEPENDS =		devel/git \
			devel/pylint \
			shells/bash \
			${RUN_DEPENDS}

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
