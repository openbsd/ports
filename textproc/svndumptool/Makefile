# $OpenBSD: Makefile,v 1.1.1.1 2013/01/08 23:27:00 stsp Exp $ 
COMMENT =		processing subversion dump files
V = 			0.6.1
DISTNAME =		svndumptool-${V}
CATEGORIES =		textproc
HOMEPAGE =		http://svn.borg.ch/svndumptool/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://svn.borg.ch/svndumptool/${V}/
MODULES =		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/svndumptool
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/svndumptool/

.include <bsd.port.mk>
