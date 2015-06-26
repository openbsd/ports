# $OpenBSD: Makefile,v 1.8 2015/06/26 09:18:39 ajacoutot Exp $

COMMENT =	KDE interface to GnuPG
DISTNAME =	kgpg-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/kutils ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kde
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kmime

MODULES =	multimedia/phonon
MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		security/gnupg \
		x11/gtk+3,-guic

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -DBOOST_NO_EXCEPTIONS"

.include <bsd.port.mk>
