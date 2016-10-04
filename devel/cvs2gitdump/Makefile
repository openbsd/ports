# $OpenBSD: Makefile,v 1.3 2016/10/04 16:01:29 juanfra Exp $

COMMENT =		import cvs tree into git or subversion

DISTNAME =		cvs2gitdump-20160815
GH_ACCOUNT =		yasuoka
GH_PROJECT =		cvs2gitdump
GH_COMMIT =		831c8e0fc69c04fa760b3cc3efb2e4523f9199d3

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
