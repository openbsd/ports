# $OpenBSD: Makefile,v 1.53 2019/07/12 20:51:19 sthen Exp $

COMMENT-main=	python Qt4 bindings
COMMENT-docs=	py-qt4 documentation

# XXX Be particularly careful when testing updates. 
#     API breaks often - do runtime tests, not just build tests.

V=		4.12
DISTNAME=	PyQt4_gpl_x11-${V}
PKGNAME=	py-qt4-${V}
PKGNAME-main=	py-qt4-${V}
PKGNAME-docs=	py-qt4-docs-${V}
EPOCH=		0
REVISION-docs=	1
REVISION-main=	2

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro

# GPLv2 or v3 with exceptions for use with certain named open-source licenses
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE QtDBus QtDeclarative QtDesigner QtGui QtHelp QtMultimedia
WANTLIB += QtNetwork QtOpenGL QtScript QtScriptTools QtSql QtSvg QtTest
WANTLIB += QtWebKit QtXml QtXmlPatterns SM X11 Xext Xi Xinerama Xrender
WANTLIB += c dbus-1 fontconfig freetype m phonon pthread ${COMPILER_LIBCXX}
WANTLIB += ${MODPY_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES=	-main -docs

WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-sip \
		x11/dbus-python
LIB_DEPENDS=	${MODQT4_LIB_DEPENDS} \
		${MODPY_LIB_DEPENDS}

NO_TEST=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES=	lang/python \
		x11/qt4

USE_GMAKE=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=${MODPY_BIN} configure.py
CONFIGURE_ARGS=	--verbose \
		--qmake="${LOCALBASE}/bin/qmake4" \
		--bindir="${PREFIX}/bin" \
		--destdir="${MODPY_SITEPKG}" \
		--sipdir="${PREFIX}/share/sip" \
		--vendorid-incdir="${MODPY_INCDIR}" \
		--vendorid-libdir="${MODPY_LIBDIR}" \
		--no-qsci-api \
		INCDIR_QT=${MODQT_INCDIR} \
		LIBDIR="${X11BASE}/lib ${LOCALBASE}/lib" \
		LIBDIR_QT=${MODQT_LIBDIR} \
		CC=${CC} \
		CXX=${CXX} \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}
CONFIGURE_ENV=	LOCALBASE=${LOCALBASE}

PYQTMODS=	QtAssistant QtCore QtDBus QtDeclarative QtDesigner \
		QtGui QtHelp QtMultimedia QtNetwork QtOpenGL QtScript \
		QtScriptTools QtSql QtSvg QtTest QtWebKit QtXml \
		QtXmlPatterns phonon

.for i in ${PYQTMODS}
CONFIGURE_ARGS+=--enable=${i}
.endfor

MODPY_MAJOR=${MODPY_VERSION:C/\..*//}
# the distfile has pyuic for both python 2 and 3, normally both are
# installed and they're selected at runtime. this breaks bytecode
# compilation for package generation, so just rm the wrong files.
pre-configure:
.if ${MODPY_MAJOR:M3}
	rm -r ${WRKSRC}/pyuic/uic/port_v2
.else
	rm -r ${WRKSRC}/pyuic/uic/port_v3
.endif

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}/${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-qt4
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-qt4
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-qt4/*

.include <bsd.port.mk>
