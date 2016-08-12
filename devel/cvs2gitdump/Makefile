# $OpenBSD: Makefile,v 1.2 2016/08/12 16:40:48 juanfra Exp $

COMMENT =		import cvs tree into git or subversion

DISTNAME =		cvs2gitdump-20160808
GH_ACCOUNT =		yasuoka
GH_PROJECT =		cvs2gitdump
GH_COMMIT =		a37cb15738b1dd9e8efa10072e02bdfb7b3969de

CATEGORIES =		devel

# ISC
PERMIT_PACKAGE_CDROM =	Yes

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
