# $OpenBSD: Makefile,v 1.15 2020/08/27 00:59:48 kevlo Exp $

COMMENT-main =	flexible input method framework
COMMENT-gtk3 =	fcitx for GTK+3

V =		4.2.9.8
DISTNAME =	fcitx-$V
PKGNAME-main =	${PKGNAME}
PKGNAME-gtk3 =	fcitx-gtk3-$V

SHARED_LIBS +=	fcitx-config	0.0 # 4.1
SHARED_LIBS +=	fcitx-core	0.1 # 0.3
SHARED_LIBS +=	fcitx-gclient	0.0 # 0.2
SHARED_LIBS +=	fcitx-utils	0.0 # 0.1

CATEGORIES =	inputmethods chinese japanese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+ with plugin exception
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES =	-main -gtk3

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB-main +=		X11 Xext Xfixes Xinerama Xrender c cairo dbus-1 \
			execinfo gdk-x11-2.0 gettextpo gio-2.0 glib-2.0 \
			gobject-2.0 gtk-x11-2.0 iconv intl json-c kvm \
			pango-1.0 pangocairo-1.0 pthread uuid xkbcommon \
			xkbfile xml2

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/gobject-introspection \
			devel/iso-codes \
			devel/kf5/extra-cmake-modules \
			shells/bash
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			shells/bash \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/gettext,-tools \
			devel/json-c \
			devel/libexecinfo \
			sysutils/e2fsprogs \
			textproc/libxml \
			x11/dbus \
			x11/gtk+2 \
			x11/xkbcommon

WANTLIB-gtk3 +=		fcitx-gclient fcitx-utils glib-2.0 gobject-2.0 gdk-3
WANTLIB-gtk3 +=		gtk-3 pango-1.0 xkbcommon

LIB_DEPENDS-gtk3 =	${BUILD_PKGPATH},-main \
			x11/gtk+3

MASTER_SITES =	https://download.fcitx-im.org/fcitx/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =	https://download.fcitx-im.org/data/
DATA =	en_dict-20121020 pinyin py_table-20121124 py_stroke-20121124 table
.for data in ${DATA}
DISTFILES += ${data}.tar.gz:0
.endfor
EXTRACT_SUFX =	.tar.xz

DIST_SUBDIR =	fcitx

MODULES =	devel/cmake

CONFIGURE_ARGS =-Wno-dev \
		-DENABLE_GTK3_IM_MODULE=ON \
		-DENABLE_ENCHANT=OFF \
		-DENABLE_OPENCC=OFF \
		-DENABLE_PRESAGE=OFF \
		-DENABLE_QT=OFF \
		-DENABLE_QT_IM_MODULE=OFF \
		-DENABLE_QT_GUI=OFF \
		-DSYSCONFDIR=${PREFIX}/share/examples/fcitx \
		-DMAN_INSTALL_DIR=${PREFIX}/man/ \
		-DCMAKE_C_FLAGS="${CFLAGS} \
			-I${LOCALBASE}/include \
			-I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} \
			-I${LOCALBASE}/include \
			-I${X11BASE}/include"

NO_TEST =	Yes

post-patch:
	@cp ${FULLDISTDIR}/pinyin.tar.gz ${WRKSRC}/src/im/pinyin/data
	@cp ${FULLDISTDIR}/table.tar.gz ${WRKSRC}/src/im/table/data
	@cp ${FULLDISTDIR}/en_dict-20121020.tar.gz \
		${WRKSRC}/src/module/spell/dict
	@cp ${FULLDISTDIR}/py_stroke-20121124.tar.gz \
		${WRKSRC}/src/module/pinyin-enhance/data
	@cp ${FULLDISTDIR}/py_table-20121124.tar.gz \
		${WRKSRC}/src/module/pinyin-enhance/data/

.include <bsd.port.mk>
