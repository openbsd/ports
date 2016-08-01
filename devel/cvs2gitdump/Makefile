# $OpenBSD: Makefile,v 1.1.1.1 2016/08/01 08:38:58 sthen Exp $

COMMENT =		import cvs tree into git or subversion

DISTNAME =		cvs2gitdump-20160420
GH_ACCOUNT =		yasuoka
GH_PROJECT =		cvs2gitdump
GH_COMMIT =		be9ce4de19ebd34ca42aa45a560220e9f2f2c885

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvs2gitdump
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/cvs2gitdump/

.include <bsd.port.mk>
