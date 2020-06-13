# $OpenBSD: Makefile,v 1.33 2020/06/13 16:22:53 rsadowski Exp $
BROKEN =		KDE4 deleted, update is coming
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		https://kmymoney.org/
VERSION =		4.8.1.1
DISTNAME =		kmymoney-${VERSION}
REVISION =		11

SHARED_LIBS += kmm_kdchart                      1.1 # 0.0
SHARED_LIBS += kmm_mymoney                      1.1 # 0.0
SHARED_LIBS += kmm_payeeidentifier              0.0 # 0.0
SHARED_LIBS += kmm_plugin                       1.1 # 0.0
SHARED_LIBS += kmm_widgets                      1.1 # 0.0
SHARED_LIBS += payeeidentifier_iban_bic         0.0 # 4.14
SHARED_LIBS += payeeidentifier_iban_bic_widgets 0.0 # 4.14
SHARED_LIBS += payeeidentifier_nationalAccount  0.0 # 4.14

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  c m pthread z
WANTLIB += ${COMPILER_LIBCXX}
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
WANTLIB += alkimia assuan gmp gpg-error gpgme4++-pthread gpgme
WANTLIB += ical icalss ofx osp soprano qgpgme4
WANTLIB += aqbanking gwengui-cpp gwengui-qt4 gwenhywfar
WANTLIB += QtDeclarative QtScript krosscore

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kmymoney/${VERSION}/src/}

MODULES =		devel/cmake \
			x11/kde4 \
			lang/python \
			multimedia/phonon
MODKDE4_USE =		pim

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/p5-Finance-Quote \
		misc/shared-mime-info \
		security/p5-Crypt-SSLeay \
		x11/gtk+3,-guic \
		x11/kde-applications/kcalc \
		${MODKDE4_DEP_DIR}/kgpg

LIB_DEPENDS =	devel/gwenhywfar>=4.13.1p3 \
		devel/libofx>=0.9.4 \
		productivity/aqbanking>=5.5.1p1 \
		productivity/libalkimia,${MODKDE4_FLAVOR}>=5

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/kmm_weboob/weboob.py

.include <bsd.port.mk>
