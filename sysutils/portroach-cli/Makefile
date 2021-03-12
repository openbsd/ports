# $OpenBSD: Makefile,v 1.9 2021/03/12 19:02:45 kn Exp $

COMMENT =		query portroach(1)
CATEGORIES =		sysutils
DISTFILES =		# empty
# <portroach API>.rev
PKGNAME =		portroach-cli-1.5
MAINTAINER =		Klemens Nanni <kn@openbsd.org>
REVISION =		0

# ISC
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

RUN_DEPENDS =		textproc/jq
TEST_DEPENDS =		devel/shellcheck

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
