# $OpenBSD: Makefile,v 1.3 2014/09/21 09:02:47 espie Exp $

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	http://www.calligra-suite.org/
DISTNAME =	calligra-2.8.5
REVISION=	0
CATEGORIES =	editors

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes
DPB_PROPERTIES =	parallel

MODULES =	x11/kde4 \
		converters/libiconv \
		multimedia/phonon

MODKDE4_USE =	pim

SHARED_LIBS =   RtfReader                 50.0 # 0.0
SHARED_LIBS +=  basicflakes               50.0 # 0.0
SHARED_LIBS +=  braindumpcore             50.0 # 9.0
SHARED_LIBS +=  calligradb                50.0 # 0.0
SHARED_LIBS +=  calligrakdchart           50.0 # 0.0
SHARED_LIBS +=  calligrakdgantt           50.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      50.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         50.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      50.0 # 0.0
SHARED_LIBS +=  flake                     50.0 # 0.0
SHARED_LIBS +=  flowprivate               50.0 # 0.0
SHARED_LIBS +=  karboncommon              50.0 # 0.0
SHARED_LIBS +=  karbonui                  50.0 # 0.0
SHARED_LIBS +=  kexicore                  50.0 # 0.0
SHARED_LIBS +=  kexidatatable             50.0 # 0.0
SHARED_LIBS +=  kexidataviewcommon        50.0 # 0.0
SHARED_LIBS +=  kexidb                    50.0 # 0.0
SHARED_LIBS +=  kexiextendedwidgets       50.0 # 0.0
SHARED_LIBS +=  kexiformutils             50.0 # 0.0
SHARED_LIBS +=  kexiguiutils              50.0 # 0.0
SHARED_LIBS +=  keximain                  50.0 # 0.0
SHARED_LIBS +=  keximigrate               50.0 # 0.0
SHARED_LIBS +=  kexirelationsview         50.0 # 0.0
SHARED_LIBS +=  kexiutils                 50.0 # 0.0
SHARED_LIBS +=  kformdesigner             50.0 # 0.0
SHARED_LIBS +=  kokross                   50.0 # 0.0
SHARED_LIBS +=  komain                    50.0 # 0.0
SHARED_LIBS +=  koodf                     50.0 # 0.0
SHARED_LIBS +=  kopageapp                 50.0 # 0.0
SHARED_LIBS +=  koplugin                  50.0 # 0.0
SHARED_LIBS +=  koproperty                50.0 # 0.0
SHARED_LIBS +=  kordf                     50.0 # 0.0
SHARED_LIBS +=  koreport                  50.0 # 0.0
SHARED_LIBS +=  kotext                    50.0 # 0.0
SHARED_LIBS +=  kowidgets                 50.0 # 0.0
SHARED_LIBS +=  kowidgetutils             50.0 # 0.0
SHARED_LIBS +=  kowv2                     50.0 # 0.0
SHARED_LIBS +=  kplatokernel              50.0 # 0.0
SHARED_LIBS +=  kplatomodels              50.0 # 0.0
SHARED_LIBS +=  kplatoui                  50.0 # 0.0
SHARED_LIBS +=  kritaimage                50.0 # 0.0
SHARED_LIBS +=  kritalibbrush             50.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           50.0 # 0.0
SHARED_LIBS +=  kritaui                   50.0 # 0.0
SHARED_LIBS +=  kundo2                    50.0 # 0.0
SHARED_LIBS +=  pigmentcms                50.0 # 0.0
SHARED_LIBS +=  planprivate               50.0 # 0.0
SHARED_LIBS +=  planworkapp               50.0 # 0.0
SHARED_LIBS +=  planworkfactory           50.0 # 0.0
SHARED_LIBS +=  rcps_plan                 50.0 # 0.0
SHARED_LIBS +=  wordsprivate              50.0 # 0.0
SHARED_LIBS +=  kformula                  50.0 # 13.0
SHARED_LIBS +=  komsooxml                 50.0 # 13.0
SHARED_LIBS +=  koodf2                    50.0 # 13.0
SHARED_LIBS +=  koodfreader               50.0 # 13.0
SHARED_LIBS +=  kotextlayout              50.0 # 13.0
SHARED_LIBS +=  kovectorimage             50.0 # 13.0

WANTLIB =  c m pthread z
WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath SM X11 Xext Xi
WANTLIB += fontconfig
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtWebKit lib/qt4/QtDBus
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtSql
WANTLIB += ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kde
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kactivities
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kcmutils ${KDE4LIB}/kdcraw
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeclarative
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/krosscore ${KDE4LIB}/krossui
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/marblewidget
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/okularcore
WANTLIB += ${KDE4LIB}/phonon_sexperimental ${KDE4LIB}/threadweaver
WANTLIB += OpenColorIO exiv2 fftw3 freetype glib-2.0 gsl icui18n icuuc
WANTLIB += jpeg lcms2 mysqlclient openjpeg png poppler poppler-qt4 pqxx
WANTLIB += qca2 soprano sqlite3 sybdb tiff

# kexi needs headers in postgresql,{-main,-server}
# kexi needs all db drivers to be present while building
BUILD_DEPENDS =	devel/boost \
		databases/mariadb \
		databases/postgresql,-main \
		databases/postgresql,-server \
		math/eigen2 \
		productivity/librcps

# kexi needs all db driver installed to run,
# assuming sqlite3 is in base...

RUN_DEPENDS =	databases/mariadb \
		databases/postgresql,-main \
		databases/postgresql,-server \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+2,-guic

LIB_DEPENDS =	databases/freetds \
		databases/libpqxx>=3,<5 \
		databases/mariadb \
		devel/gsl \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/opencolorio \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff \
		math/fftw3,double \
		print/poppler,,-qt4 \
		security/qca2 \
		textproc/icu4c \
		${MODKDE4_DEP_DIR}/libkdcraw \
		${MODKDE4_DEP_DIR}/marble \
		${MODKDE4_DEP_DIR}/okular

# XXX FindPqxx.cmake should be fixed instead of hardcoding version here
CONFIGURE_ARGS =	-DPQXX_VERSION=4.0.1 \
	-DOPENJPEG_INCLUDE_DIR=${LOCALBASE}/include/openjpeg-1.5

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy:BOOL=Off \
			-DWITH_LibEtonyek:BOOL=Off \
			-DWITH_LibOdfGen:BOOL=Off \
			-DWITH_LibVisio:BOOL=Off \
			-DWITH_LibWpd:BOOL=Off \
			-DWITH_LibWpg:BOOL=Off \
			-DWITH_LibWps:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_Vc:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

.include <bsd.port.mk>
