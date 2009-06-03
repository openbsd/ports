# $OpenBSD: Makefile,v 1.7 2009/06/03 18:22:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT-main=	python Qt4 bindings
COMMENT-docs=	py-qt4 documentation

V=		4.4.4
DISTNAME=	PyQt-x11-gpl-${V}
PKGNAME=	py-qt4-${V}
PKGNAME-main=	py-qt4-${V}
PKGNAME-docs=	py-qt4-docs-${V}

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro

MAINTAINER=	Lars Hansson <lars@unet.net.ph>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xi Xinerama Xrender c dbus-1
WANTLIB += expat fontconfig freetype glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += intl m png pthread stdc++ z

MULTI_PACKAGES=	-main -docs

WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-sip->=4.7.9:devel/py-sip \
		::x11/dbus-python
LIB_DEPENDS=	QtAssistantClient,QtDesigner,QtGui,QtNetwork,QtOpenGL,QtScript,QtSql,QtSvg,QtTest,QtXml::x11/qt4 \
		${MODPY_LIB_DEPENDS}

NO_REGRESS=	Yes

MASTER_SITES=	http://www.riverbankcomputing.co.uk/static/Downloads/PyQt4/

MODULES=	converters/libiconv \
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

PYQTMODS=	QtCore QtGui QtNetwork QtOpenGL QtScript QtSql QtSvg \
		QtTest QtXml QtAssistant QtDesigner

.for i in ${PYQTMODS}
CONFIGURE_ARGS+=--enable=${i}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-qt4
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-qt4
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-qt4/*

.include <bsd.port.mk>
