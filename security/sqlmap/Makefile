COMMENT =		penetration testing tool to detect/exploit SQL injection

GH_ACCOUNT =		sqlmapproject
GH_PROJECT =		sqlmap
GH_TAGNAME =		1.8.11
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		http://sqlmap.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_ADJ_FILES	= 	sqlmap.py

# NO_BUILD but needs ${MODPY_LIBDIR}/compileall.py
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

NO_BUILD =		Yes
NO_TEST =		Yes

INSTDIR =		${PREFIX}/share/sqlmap

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	rm ${INSTDIR}/{.{gitattributes,gitignore},README.md}
	rm -rf ${INSTDIR}/doc
	ln -s ${TRUEPREFIX}/share/sqlmap/sqlmap.py ${PREFIX}/bin/sqlmap
	${MODPY_COMPILEALL} ${INSTDIR}

.include <bsd.port.mk>
