# $OpenBSD: Makefile,v 1.7 2015/08/12 10:00:50 zhuk Exp $
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>
VERSION =		4.7.2
DISTNAME =		kmymoney-${VERSION}

SHARED_LIBS =		kmm_kdchart		1.0
SHARED_LIBS +=		kmm_mymoney		1.0
SHARED_LIBS +=		kmm_plugin		1.0
SHARED_LIBS +=		kmm_widgets		1.0

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
WANTLIB += ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kde
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kpimutils
WANTLIB += alkimia assuan gmp gpg-error gpgme++-pthread gpgme-pthread
WANTLIB += ical icalss ofx osp qgpgme soprano
WANTLIB += aqbanking gwengui-cpp gwengui-qt4 gwenhywfar

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kmymoney2/KMyMoney-KDE4/${VERSION}/}

MODULES =		x11/kde4 devel/gettext multimedia/phonon
MODGETTEXT_TOOLS =	Yes
MODKDE4_USE =		pim

BUILD_DEPENDS =	devel/boost \
		devel/doxygen \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/p5-Finance-Quote \
		misc/shared-mime-info \
		security/p5-Crypt-SSLeay \
		x11/gtk+3,-guic \
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
