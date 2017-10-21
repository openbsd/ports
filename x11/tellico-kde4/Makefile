# $OpenBSD: Makefile,v 1.12 2017/10/21 20:06:51 rsadowski Exp $

COMMENT =	organizer for book/music/video collections for KDE4
DISTNAME =	tellico-2.3.12

CATEGORIES =	productivity x11
HOMEPAGE =	http://tellico-project.org/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += c exempi exslt gcrypt gpg-error ${KDE4LIB}/kabc
WANTLIB += ${KDE4LIB}/kcal ${KDE4LIB}/kcddb ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/ksane m ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += poppler-qt4 qimageblitz qjson ${KDE4LIB}/solid soprano tag
WANTLIB += xml2 xslt yaz

MASTER_SITES =	http://tellico-project.org/files/
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/kde4 \
		multimedia/phonon \
		lang/python

MODKDE4_USE =	pim

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libkcompactdisc \
		devel/gettext-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	audio/taglib \
		devel/qjson \
		graphics/qimageblitz \
		net/yaz \
		print/poppler,,-qt4 \
		textproc/exempi \
		${MODKDE4_DEP_DIR}/libksane>=4.11.5p0 \
		${MODKDE4_DEP_DIR}/libkcddb

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/tellico

.include <bsd.port.mk>
