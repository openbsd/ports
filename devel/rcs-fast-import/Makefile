# $OpenBSD: Makefile,v 1.1.1.1 2014/11/30 17:03:32 rpe Exp $

COMMENT =		unpack git fast-import streams into RCS file tree

DISTNAME =		rcs-fast-import-1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.catb.org/~esr/rcs-fast-import/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_ADJ_FILES =	rcs-fast-import

RUN_DEPENDS =		devel/git \
			devel/grcs

NO_BUILD =		Yes
NO_TEST =		Yes

post-extract:
	perl -pi -e 's/rcs /grcs /g;s/ci /gci /g;s/co /gco /g' \
		${WRKSRC}/rcs-fast-import

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rcs-fast-import ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rcs-fast-import.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
