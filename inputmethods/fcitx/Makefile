# $OpenBSD: Makefile,v 1.5 2018/07/07 22:39:42 espie Exp $

COMMENT-main =	flexible input method framework
COMMENT-gtk3 = 	fcitx for GTK+3
COMMENT-qt4 =	fcitx for QT4

V =		4.2.9.5
DISTNAME = 	fcitx-$V
PKGNAME-main =	fcitx-$V
PKGNAME-gtk3 =	fcitx-gtk3-$V
PKGNAME-qt4 =	fcitx-qt4-$V
REVISION =	2

SHARED_LIBS +=	fcitx-config	0.0 # 4.1
SHARED_LIBS +=	fcitx-core	0.0 # 0.3
SHARED_LIBS +=	fcitx-gclient	0.0 # 0.2
SHARED_LIBS +=	fcitx-qt	0.0 # 0.1
SHARED_LIBS +=	fcitx-utils	0.0 # 0.1

CATEGORIES =	inputmethods chinese japanese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+ with plugin exception
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES =	-main -gtk3 -qt4

WANTLIB-common =	c iconv intl kvm xkbcommon

WANTLIB-main +=		${WANTLIB-common}
WANTLIB-main +=		X11 Xext Xfixes Xinerama Xrender c cairo dbus-1 \
			execinfo gdk-x11-2.0 gettextpo gio-2.0 glib-2.0 \
			gobject-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
			pthread uuid xkbfile xml2

BUILD_DEPENDS =		devel/gettext-tools \
			devel/gobject-introspection \
			devel/iso-codes \
			devel/kf5/extra-cmake-modules \
			shells/bash
RUN_DEPENDS-main =	devel/desktop-file-utils \
			shells/bash
LIB_DEPENDS-main =	devel/gettext-tools \
			devel/libexecinfo \
			sysutils/e2fsprogs \
			x11/dbus \
			x11/gtk+2 \
			x11/xkbcommon

WANTLIB-gtk3 +=		fcitx-gclient fcitx-utils gdk-3 glib-2.0 gobject-2.0
WANTLIB-gtk3 +=		gtk-3 pango-1.0 xkbcommon

RUN_DEPENDS-gtk3 =	inputmethods/fcitx,-main
LIB_DEPENDS-gtk3 =	x11/gtk+3

WANTLIB-qt4 +=		${WANTLIB-common}
WANTLIB-qt4 +=		${COMPILER_LIBCXX} ICE QtCore QtDBus QtGui SM X11 \
			Xext execinfo fcitx-config fcitx-utils m

LIB_DEPENDS-qt4 =	inputmethods/fcitx,-main \
			${MODQT4_LIB_DEPENDS}

MASTER_SITES =	https://download.fcitx-im.org/fcitx/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =	https://download.fcitx-im.org/data/
DATA =	en_dict-20121020 pinyin py_table-20121124 py_stroke-20121124 table
.for data in ${DATA}
DISTFILES += ${data}.tar.gz:0
.endfor
EXTRACT_SUFX =	.tar.xz

DIST_SUBDIR =	fcitx

MODULES =	devel/cmake \
		x11/qt4

CONFIGURE_ARGS =-DENABLE_GTK3_IM_MODULE=ON \
		-DENABLE_ENCHANT=OFF \
		-DENABLE_OPENCC=OFF \
		-DENABLE_PRESAGE=OFF \
		-DSYSCONFDIR=${PREFIX}/share/examples/fcitx \
		-DMAN_INSTALL_DIR=${PREFIX}/man/ \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include"

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
