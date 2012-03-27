# $OpenBSD: Makefile,v 1.1.1.1 2012/03/27 18:16:23 rpointel Exp $

# XXX: Upstream doesn't keep old files; if updating please mirror or ask sthen@

COMMENT =	Python binding for the Scintilla source code editor

VERSION =	2.5.1
DISTNAME =	QScintilla-gpl-${VERSION}
PKGNAME =	py-qscintilla-${VERSION}
CATEGORIES =	editors x11 devel

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =  http://www.riverbankcomputing.com/static/Downloads/QScintilla2/ \
		http://spacehopper.org/mirrors/

MODULES = lang/python x11/qt4

BUILD_DEPENDS = devel/py-sip \
		x11/py-qt4 \
		x11/dbus-python
LIB_DEPENDS = editors/qscintilla

WANTLIB += X11 Xext m stdc++ QtGui qscintilla2

WRKSRC =	${WRKDIST}/Python

MODPY_RUNDEP = No
MODPY_BUILDDEP = No

NO_REGRESS =	Yes

# do not use ./setup.py to build
CONFIGURE_STYLE = no

pre-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ${WRKSRC}/configure.py -o ${LOCALBASE}/lib

.include <bsd.port.mk>
