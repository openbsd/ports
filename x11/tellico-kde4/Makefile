# $OpenBSD: Makefile,v 1.1.1.1 2014/07/13 12:30:14 zhuk Exp $

COMMENT =	organizer for book/music/video collections for KDE4
DISTNAME =	tellico-2.3.9

CATEGORIES =	productivity x11
HOMEPAGE =	http://tellico-project.org/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcal ${KDE4LIB}/kcddb
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/ksane ${KDE4LIB}/kxmlrpcclient ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += exempi exslt gcrypt gpg-error poppler-qt4 qimageblitz qjson
WANTLIB += soprano tag xml2 xslt yaz

MASTER_SITES =	http://tellico-project.org/files/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext x11/kde4 multimedia/phonon lang/python
MODKDE4_USE =	pim

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libkcompactdisc

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

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
