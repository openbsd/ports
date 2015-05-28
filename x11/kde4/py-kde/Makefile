# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:31 pascal Exp $

COMMENT =	KDE 4 bindings for Python
DISTNAME =	pykde4-${MODKDE4_VERSION}
PKGNAME =	py-kde-${MODKDE4_VERSION}
REVISION =	0

MODULES =	lang/python

# /usr/local/include/kconfiggroup.h:627: warning: 'virtual const KConfigGroup KConfigGroup::groupImpl(const QByteArray&) const' was hidden
# /usr/ports/pobj/py-kde-4.9.0/build-i386/sip/kdecore/sipkdecorepart6.cpp:16053: warning:   by 'virtual KConfigGroup sipKConfigGroup::groupImpl(const QByteArray&)'
# /usr/local/include/kconfig.h:387: warning: 'virtual const KConfigGroup KConfig::groupImpl(const QByteArray&) const' was hidden
# /usr/ports/pobj/py-kde-4.9.0/build-i386/sip/kdecore/sipkdecorepart6.cpp:19561: warning:   by 'virtual KConfigGroup sipKConfig::groupImpl(const QByteArray&)'

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff2 ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukquery
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/phonon_s ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${MODPY_WANTLIB} soprano sopranoclient sopranoserver

MODKDE4_USE =	pim libs

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		devel/py-sip>=4.14.1 \
		misc/shared-desktop-ontologies \
		x11/py-qt4>=4.9.5

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		misc/shared-desktop-ontologies \
		x11/py-qt4>=4.9.5

LIB_DEPENDS = 	databases/soprano>=${MIN_SOPRANO_VERSION}

# One who said that Polkit-Qt-1 is a drop-in replacement
# for Polkit-Qt, is probably the one who said that
# 640 kilobytes ought to be enough for everybody.
CONFIGURE_ARGS =	-DWITH_PolkitQt:Bool=FALSE

post-install:
	find ${PREFIX} -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
