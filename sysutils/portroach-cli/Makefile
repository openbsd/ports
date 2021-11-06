# $OpenBSD: Makefile,v 1.11 2021/11/06 00:49:47 kn Exp $

COMMENT =		query portroach(1)
CATEGORIES =		sysutils
DISTFILES =		# empty
# <portroach API>.rev
PKGNAME =		portroach-cli-1.7
MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

RUN_DEPENDS =		textproc/jq
TEST_DEPENDS =		devel/shellcheck>=0.7.1

SCRIPT =		${FILESDIR}/portroach-cli
MAN =			${SCRIPT}.1

do-install:
	${INSTALL_SCRIPT} ${SCRIPT} ${PREFIX}/bin/
	${INSTALL_MAN} ${MAN} ${PREFIX}/man/man1/

do-test:
	ksh -n ${SCRIPT}
	shellcheck -Cnever -e SC2250 --norc -o all -S style ${SCRIPT}
	mandoc -Tlint ${MAN}

.include <bsd.port.mk>
