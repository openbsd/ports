# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:57 sthen Exp $

COMMENT =		unpack git fast-import streams into RCS file tree

DISTNAME =		rcs-fast-import-1.0
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/rcs-fast-import/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	rcs-fast-import

RUN_DEPENDS =		devel/git \
			devel/grcs

NO_BUILD =		Yes
NO_TEST =		Yes

post-extract:
	sed -i -e 's/rcs /grcs /g;s/ci /gci /g;s/co /gco /g' ${WRKSRC}/rcs-fast-import

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rcs-fast-import ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rcs-fast-import.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
