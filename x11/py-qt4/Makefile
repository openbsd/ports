# $OpenBSD: Makefile,v 1.19 2010/09/07 10:22:06 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	python Qt4 bindings
COMMENT-docs=	py-qt4 documentation

# XXX: Upstream doesn't keep old files; if updating please mirror or ask sthen@
V=		4.7.6
DISTNAME=	PyQt-x11-gpl-${V}
PKGNAME=	py-qt4-${V}
PKGNAME-main=	py-qt4-${V}
REVISION-main=	0
PKGNAME-docs=	py-qt4-docs-${V}

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU X11 Xext c dbus-1 m pthread stdc++ 
WANTLIB += QtAssistantClient QtDesigner QtGui QtNetwork QtOpenGL
WANTLIB += QtScript QtSql QtSvg QtTest QtXml

MULTI_PACKAGES=	-main -docs

WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-sip->=4.11.1:devel/py-sip \
		::x11/dbus-python
LIB_DEPENDS=	::x11/qt4 \
		${MODPY_LIB_DEPENDS}

NO_REGRESS=	Yes

MASTER_SITES=	http://www.riverbankcomputing.co.uk/static/Downloads/PyQt4/ \
		http://spacehopper.org/mirrors/

MODULES=	devel/gettext \
		lang/python \
		x11/qt4

USE_X11=	Yes

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

PYQTMODS=	QtCore QtGui QtNetwork QtOpenGL QtScript QtSql QtSvg \
		QtTest QtXml QtAssistant QtDesigner

.for i in ${PYQTMODS}
CONFIGURE_ARGS+=--enable=${i}
.endfor

MODPY_MAJOR=${MODPY_VERSION:C/\..*//}
# the distfile has pyuic for both python 2 and 3, normally both are
# installed and they're selected at runtime. this breaks bytecode
# compilation for package generation, so just rm the wrong files.
pre-configure:
.if ${MODPY_MAJOR} == "2"
	rm -r ${WRKSRC}/pyuic/uic/port_v2
.else
	rm -rf ${WRKSRC}/pyuic/uic/port_v3
.endif

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}/${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-qt4
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-qt4
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-qt4/*

.include <bsd.port.mk>
