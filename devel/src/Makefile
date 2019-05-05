# $OpenBSD: Makefile,v 1.16 2019/05/05 16:06:34 danj Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-1.18
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

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
