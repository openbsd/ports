# $OpenBSD: Makefile,v 1.6 2014/07/09 20:03:23 zhuk Exp $

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${MODKDE4_VERSION}

# Bogus message about "backend /usr/local/bin/latex" at startup when no
# backend is choosen on the command line.

SHARED_LIBS =  cantorlibs                50.0 # 0.0
SHARED_LIBS += cantor_config             50.0 # 0.0

WANTLIB =  c m pthread ${MODPY_WANTLIB}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/analitza ${KDE4LIB}/analitzagui ${KDE4LIB}/analitzaplot
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kpty ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack
WANTLIB += cln gfortran glib-2.0 qalculate soprano spectre xml2

MODULES =	devel/gettext lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	databases/soprano \
		lang/gfortran,-lib \
		math/R>=2.15.1p4 \
		math/libqalculate \
		print/libspectre \
		${MODKDE4_DEP_DIR}/analitza>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
