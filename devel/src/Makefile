# $OpenBSD: Makefile,v 1.2 2014/11/15 11:39:55 rpe Exp $

COMMENT =		Simple Revision Control

DISTNAME =		src-0.8

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/src/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	src

BUILD_DEPENDS =		textproc/asciidoc
TEST_DEPENDS =		devel/git

NO_BUILD =		Yes
TEST_TARGET =		check

do-build:
	cd ${WRKDIST} && make

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
