# $OpenBSD: Makefile,v 1.2 2013/01/09 12:40:38 sthen Exp $ 

COMMENT =		processing subversion dump files
MODPY_EGG_VERSION =	0.6.1
DISTNAME =		svndumptool-${MODPY_EGG_VERSION}
CATEGORIES =		textproc
HOMEPAGE =		http://svn.borg.ch/svndumptool/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://svn.borg.ch/svndumptool/${MODPY_EGG_VERSION}/
MODULES =		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/svndumptool
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/svndumptool/

.include <bsd.port.mk>
