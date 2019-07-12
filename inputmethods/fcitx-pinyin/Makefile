# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:13 sthen Exp $

COMMENT =	pinyin wrapper for fcitx

V =		0.5.3
PKGNAME=	fcitx-pinyin-$V

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-libpinyin
GH_TAGNAME =	$V

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://fcitx-im.org/wiki/Libpinyin

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} dbus-1 glib-2.0 intl m pinyin

MASTER_SITES0 =	https://download.fcitx-im.org/data/
DISTFILES +=	${DISTNAME}.tar.gz model.text.20161206.tar.gz:0

DIST_SUBDIR =	fcitx-libpinyin

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/gettext,-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	devel/desktop-file-utils \
		inputmethods/fcitx,-main \
		x11/gtk+3,-guic
LIB_DEPENDS =	chinese/libpinyin \
		x11/dbus

CONFIGURE_ARGS =	-DENABLE_QT=Off

NO_TEST =	Yes

post-patch:
	ln -s ${FULLDISTDIR}/model.text.20161206.tar.gz ${WRKSRC}/data

.include <bsd.port.mk>
