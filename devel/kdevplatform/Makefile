# $OpenBSD: Makefile,v 1.13 2018/06/29 22:16:10 espie Exp $

CATEGORIES =	devel
COMMENT =	IDE creation toolkit for KDE 4
KDEV_V =	4.7.2
KDEVPLAT_V =	1.7.2
DISTNAME =	kdevplatform-${KDEVPLAT_V}
HOMEPAGE =	http://www.kdevelop.org/
REVISION =	3

SHARED_LIBS =	kdevplatformdebugger		0.1 # 3.0
SHARED_LIBS +=	kdevplatformdocumentation	0.1 # 3.0
SHARED_LIBS +=	kdevplatforminterfaces		0.1 # 3.0
SHARED_LIBS +=	kdevplatformjsontests		0.1 # 7.0
SHARED_LIBS +=	kdevplatformlanguage		0.1 # 3.0
SHARED_LIBS +=	kdevplatformoutputview		0.1 # 3.0
SHARED_LIBS +=	kdevplatformproject		0.1 # 3.0
SHARED_LIBS +=	kdevplatformshell		0.1 # 3.0
SHARED_LIBS +=	kdevplatformtests		0.1 # 3.0
SHARED_LIBS +=	kdevplatformutil		0.1 # 3.0
SHARED_LIBS +=	kdevplatformvcs			0.1 # 3.0
SHARED_LIBS +=	sublime				0.1 # 3.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${KDEV_V}/src/}
DIST_SUBDIR =	kde

# LGPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  c iconv intl m pthread
WANTLIB += QtDBus QtDeclarative QtGui QtNetwork QtScript QtSvg QtTest
WANTLIB += QtWebKit QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kutils
WANTLIB += apr-1 aprutil-1 qjson soprano svn_client-1 svn_fs-1 svn_ra-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1
WANTLIB += grantlee_core
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	x11/kde4

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS = 	devel/apr \
		devel/apr-util \
		devel/qjson \
		devel/subversion>=1.9.4 \
		x11/grantlee

.include <bsd.port.mk>
