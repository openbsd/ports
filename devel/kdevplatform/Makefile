# $OpenBSD: Makefile,v 1.6 2015/08/12 10:00:50 zhuk Exp $

CATEGORIES =	devel
COMMENT =	IDE creation toolkit for KDE 4
KDEV_V =	4.7.1
KDEVPLAT_V =	1.7.1
DISTNAME =	kdevplatform-${KDEVPLAT_V}
HOMEPAGE =	http://www.kdevelop.org/

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

WANTLIB =  c m pthread
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

MODULES =	x11/kde4 gcc4 devel/gettext
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c++
MODGETTEXT_TOOLS =	Yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS = 	devel/apr \
		devel/apr-util \
		devel/qjson \
		devel/subversion \
		x11/grantlee

.include <bsd.port.mk>
