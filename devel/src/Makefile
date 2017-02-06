# $OpenBSD: Makefile,v 1.10 2017/02/06 18:02:37 rpe Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-1.12

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
			${RUN_DEPENDS}

USE_GMAKE =		Yes
NO_BUILD =		Yes

TEST_TARGET =		check

post-extract:
	sed -i	-e 's/rcs /grcs /g;s/ci /gci /g;s/co /gco /g' ${WRKSRC}/src

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src.1 ${PREFIX}/man/man1

# Disable pylint in test, needs >= 1.0.0 that supports --msg-template.
# Disable sscs and python 3.x tests.
pre-test:
	sed -i	-e 's/^check: pylint/check:/' \
		-e 's/-p python2$$/-p '${MODPY_BIN:C/^.*\///}'/' \
		-e '/srctest -b sccs/d ' \
		-e '/p python3/d' ${WRKSRC}/Makefile

.include <bsd.port.mk>
