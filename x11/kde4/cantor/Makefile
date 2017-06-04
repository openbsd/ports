# $OpenBSD: Makefile,v 1.16 2017/06/04 22:31:43 sthen Exp $

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${MODKDE4_VERSION}
REVISION =	6

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
WANTLIB += cln glib-2.0 qalculate soprano spectre xml2
WANTLIB += luajit-${MODLUA_DEFAULT_VERSION} gfortran

# XXX module order is important there. Since we get x11/kde4 from
# Makefile.inc, it's listed too late to influence modgcc, since
# it's already been read
MODULES =	devel/gettext lang/lua lang/python gcc4 # XXX fortran
COMPILER =	gcc
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	fortran

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS = 	databases/soprano \
		lang/luajit \
		math/R>=2.15.1p4 \
		math/libqalculate \
		print/libspectre \
		${MODKDE4_DEP_DIR}/analitza>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
