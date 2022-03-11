COMMENT =		import cvs tree into git or subversion

DISTNAME =		cvs2gitdump-20210221
GH_ACCOUNT =		yasuoka
GH_PROJECT =		cvs2gitdump
GH_COMMIT =		8f24e311be56028303b8ee7910b76eb77130ee27
REVISION =		0

CATEGORIES =		devel

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-rcsparse${MODPY_FLAVOR}

NO_BUILD =		Yes
NO_TEST =		Yes

MODPY_ADJ_FILES=	*.py

do-install:
.for i in git svn
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2$idump.py ${PREFIX}/bin/cvs2$idump
.endfor
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
