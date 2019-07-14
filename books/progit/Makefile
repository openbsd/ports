# $OpenBSD: Makefile,v 1.3 2019/07/14 00:39:35 naddy Exp $

COMMENT =	book on version control with Git

V =		2.1.101
EPOCH =		0
DISTNAME =	progit
PKGNAME =	progit-$V

CATEGORIES =	books

HOMEPAGE =	https://git-scm.com/book/en/v2

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# CC-BY-NC-SA 3.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/progit/progit2/releases/download/$V/
EXTRACT_SUFX =		.pdf

EXTRACT_ONLY =

DIST_SUBDIR =		progit-$V

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/progit
	${INSTALL_DATA} ${FULLDISTDIR}/progit.pdf \
		${PREFIX}/share/doc/progit/

.include <bsd.port.mk>
