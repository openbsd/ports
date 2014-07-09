# $OpenBSD: Makefile,v 1.16 2014/07/09 20:03:31 zhuk Exp $

COMMENT =	web development tools for KDE
DISTNAME =	kdewebdev-${MODKDE4_VERSION}

SHARED_LIBS =	klinkstatuscommon	51.0
SHARED_LIBS +=	kommandercore		51.0
SHARED_LIBS +=	kommanderwidgets	51.0

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/khtml ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff2 ${KDE4LIB}/kparts ${KDE4LIB}/kpimidentities
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/krossui ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/mailtransport ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += soprano tidyp

MODULES =	multimedia/phonon lang/ruby
MODRUBY_REV =	1.9
MODKDE4_USE =	pim
CONFIGURE_ARGS =	-DRUBY_EXECUTABLE=${RUBY}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/korundum>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =	www/tidyp

post-patch:
	${SUBST_CMD} ${WRKSRC}/klinkstatus/src/plugins/scripting/scripts/examples/statistics/statistics.rb

.include <bsd.port.mk>
