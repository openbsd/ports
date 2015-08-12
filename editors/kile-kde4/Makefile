# $OpenBSD: Makefile,v 1.6 2015/08/12 10:00:50 zhuk Exp $

CATEGORIES =	editors
COMMENT =	user-friendly TeX/LaTex editor for KDE
HOMEPAGE =	http://kile.sourceforge.net/
DISTNAME =	kile-2.1.3
REVISION =	3

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=kile/}

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/krosscore ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils soprano

MODULES =	x11/kde4 \
		multimedia/phonon \
		devel/gettext

MODGETTEXT_TOOLS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/kate

.include <bsd.port.mk>
