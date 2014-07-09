# $OpenBSD: Makefile,v 1.9 2014/07/09 20:03:27 zhuk Exp $

COMMENT =	KDE bindings for Ruby
DISTNAME =	korundum-${MODKDE4_VERSION}

WANTLIB =  c m pthread ${MODRUBY_WANTLIB}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtOpenGL lib/qt4/QtSql
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/knewstuff2
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/kateinterfaces ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/okularcore ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/smokeakonadi
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokekate
WANTLIB += ${KDE4LIB}/smokekdecore ${KDE4LIB}/smokekdeui
WANTLIB += ${KDE4LIB}/smokekfile ${KDE4LIB}/smokekhtml ${KDE4LIB}/smokekio
WANTLIB += ${KDE4LIB}/smokeknewstuff2 ${KDE4LIB}/smokeknewstuff3
WANTLIB += ${KDE4LIB}/smokekparts ${KDE4LIB}/smokektexteditor
WANTLIB += ${KDE4LIB}/smokekutils ${KDE4LIB}/smokenepomuk
WANTLIB += ${KDE4LIB}/smokeokular ${KDE4LIB}/smokeplasma
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtopengl ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqtxml
WANTLIB += ${KDE4LIB}/smokesolid ${KDE4LIB}/smokesoprano
WANTLIB += qtruby4shared soprano

MODULES =	lang/ruby
MODKDE4_USE =	libs pim

MODRUBY_REV =		2.0
MODRUBY_ADJ_FILES =	*.rb
CONFIGURE_ARGS =	-DRUBY_EXECUTABLE=${RUBY}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/kross-interpreters>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/kate>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/ruby-qt,${MODRUBY_FLAVOR}=${MODKDE4_VERSION} \
		${MODKDE4_DEP_DIR}/smokekde>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
