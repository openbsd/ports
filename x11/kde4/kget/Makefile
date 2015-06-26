# $OpenBSD: Makefile,v 1.9 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	download manager for KDE
DISTNAME =	kget-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	net
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kget

SHARED_LIBS =	kgetcore		52.0 # 4.11

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/ktorrent
WANTLIB += ${KDE4LIB}/kworkspace ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/nepomukwidgets ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += assuan gpg-error gpgme++-pthread gpgme-pthread mms
WANTLIB += qca2 qgpgme soprano

MODULES =	devel/gettext multimedia/phonon
MODKDE4_USE =	pim workspace

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =	multimedia/libmms \
		net/libktorrent,${MODKDE4_FLAVOR} \
		security/qca2 \
		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/nepomuk-widgets>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
