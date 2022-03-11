COMMENT =		count lines of codes in many languages

V =			2.11
DISTNAME =		loccount-${V}
CATEGORIES =		textproc
REVISION =		1

HOMEPAGE =		https://gitlab.com/esr/loccount

MAINTAINER =		Klemens Nanni <kn@openbsd.org>
# BSD
PERMIT_PACKAGE =	Yes

# statically linked
WANTLIB =		c pthread

MASTER_SITES =		https://gitlab.com/esr/loccount/repository/

DISTFILES =		${DISTNAME}{${V}/archive}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/${DISTNAME}-ab5e6046588c2644f922d84ea6cad7b68805bf3c

MODULES =		lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	tablegen.py

CONFIGURE_STYLE =	XXX: do not execute MODPY_BUILD_TARGET in python.port.mk:250

BUILD_DEPENDS =		lang/go \
			textproc/asciidoc

MAKE_ENV =		GOCACHE=${WRKDIR}/go-cache GO111MODULE=off
ALL_TARGET =		loccount loccount.1
TEST_TARGET =		check

post-build:
	ln -sf ${WRKBUILD}/loccount{-${V}-*,}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/loccount ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/loccount.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
