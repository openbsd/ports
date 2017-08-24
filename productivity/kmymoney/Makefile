# $OpenBSD: Makefile,v 1.13 2017/08/24 09:31:35 dcoppa Exp $
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		https://kmymoney.org/
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>
VERSION =		4.8.0
DISTNAME =		kmymoney-${VERSION}
REVISION =		1

SHARED_LIBS =	kmm_kdchart				1.1
SHARED_LIBS +=	kmm_mymoney				1.1
SHARED_LIBS +=	kmm_plugin				1.1
SHARED_LIBS +=	kmm_widgets				1.1
SHARED_LIBS +=	payeeidentifier_iban_bic		0.0 # 4.14
SHARED_LIBS +=	payeeidentifier_iban_bic_widgets	0.0 # 4.14
SHARED_LIBS +=	payeeidentifier_nationalAccount		0.0 # 4.14

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

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
WANTLIB += alkimia assuan gmp gpg-error gpgme++-pthread gpgme-pthread
WANTLIB += ical icalss ofx osp qgpgme soprano
WANTLIB += aqbanking gwengui-cpp gwengui-qt4 gwenhywfar
WANTLIB += QtDeclarative QtScript krosscore

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kmymoney/${VERSION}/src/}

MODULES =		x11/kde4 devel/gettext lang/python multimedia/phonon
MODKDE4_USE =		pim

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/p5-Finance-Quote \
		misc/shared-mime-info \
		security/p5-Crypt-SSLeay \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/kcalc \
		${MODKDE4_DEP_DIR}/kgpg

LIB_DEPENDS =	devel/gwenhywfar>=4.13.1p3 \
		devel/libofx>=0.9.4 \
		productivity/aqbanking>=5.5.1p1 \
		productivity/libalkimia,${MODKDE4_FLAVOR}>=5 \
		textproc/libical

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/apps/kmm_weboob/weboob.py

.include <bsd.port.mk>
