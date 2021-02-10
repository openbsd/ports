# $OpenBSD: Makefile,v 1.6 2021/02/10 23:25:43 kn Exp $

COMMENT =		query portroach(1)
CATEGORIES =		sysutils
DISTFILES =		# empty
# <portroach API>.rev
PKGNAME =		portroach-cli-1.4
MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

RUN_DEPENDS =		textproc/jq
TEST_DEPENDS =		devel/shellcheck,-main

SCRIPT =		${FILESDIR}/portroach-cli
MAN =			${SCRIPT}.1

do-install:
	${INSTALL_SCRIPT} ${SCRIPT} ${PREFIX}/bin/
	${INSTALL_MAN} ${MAN} ${PREFIX}/man/man1/

do-test:
	ksh -n ${SCRIPT}
	shellcheck ${SCRIPT}
	mandoc -Tlint ${MAN}

.include <bsd.port.mk>
