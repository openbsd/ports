COMMENT =		processing subversion dump files
MODPY_EGG_VERSION =	0.6.1
DISTNAME =		svndumptool-${MODPY_EGG_VERSION}
CATEGORIES =		textproc
HOMEPAGE =		http://svn.borg.ch/svndumptool/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://svn.borg.ch/svndumptool/${MODPY_EGG_VERSION}/
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/svndumptool
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/svndumptool/

.include <bsd.port.mk>
