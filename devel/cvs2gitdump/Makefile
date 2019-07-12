# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:07 sthen Exp $

COMMENT =		import cvs tree into git or subversion

DISTNAME =		cvs2gitdump-20170517
GH_ACCOUNT =		yasuoka
GH_PROJECT =		cvs2gitdump
GH_COMMIT =		68bfed7274ce97e215fa1a4502feb0e8e5c54c8c

CATEGORIES =		devel

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-rcsparse

NO_BUILD =		Yes
NO_TEST =		Yes

MODPY_ADJ_FILES=	*.py

do-install:
.for i in git svn
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2$idump.py ${PREFIX}/bin/cvs2$idump
.endfor
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
