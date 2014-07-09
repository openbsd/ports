# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 16:09:35 zhuk Exp $
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>
VERSION =		4.6.4
DISTNAME =		kmymoney-${VERSION}

SHARED_LIBS =		kmm_kdchart		0.0
SHARED_LIBS +=		kmm_mymoney		0.0
SHARED_LIBS +=		kmm_plugin		0.0
SHARED_LIBS +=		kmm_widgets		0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile ${KDE4LIB}/kholidays
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kjs ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += alkimia assuan gmp gpg-error gpgme++-pthread gpgme-pthread
WANTLIB += ical icalss ofx osp qgpgme soprano
WANTLIB += aqbanking gwengui-qt4 gwenhywfar

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kmymoney2/KMyMoney-KDE4/${VERSION}/}

MODULES =	x11/kde4 devel/gettext multimedia/phonon
MODKDE4_USE =	pim

BUILD_DEPENDS =	devel/boost \
		devel/doxygen \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/p5-Finance-Quote \
		misc/shared-mime-info \
		security/p5-Crypt-SSLeay \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/kcalc \
		${MODKDE4_DEP_DIR}/kgpg

LIB_DEPENDS =	devel/libofx>=0.9.4 \
		productivity/aqbanking \
		productivity/libalkimia,${MODKDE4_FLAVOR} \
		textproc/libical

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
