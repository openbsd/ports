# $OpenBSD: Makefile,v 1.45 2019/01/22 12:13:22 edd Exp $

COMMENT-main =		easy to use LaTeX and ConTeXt editor
COMMENT-python =	Python scripting for TeXworks
COMMENT-lua =		Lua scripting for TeXworks

V =			0.6.2
GH_ACCOUNT =		TeXworks
GH_PROJECT =		texworks
GH_TAGNAME =		release-${V}

PKGNAME-main =		texworks-${V}
PKGNAME-lua =		texworks-lua-${V}
PKGNAME-python =	texworks-python-${V}

REVISION-main =		1

EPOCH =			0

WRKDIST =		${WRKDIR}/texworks-release-${V}

CATEGORIES =		editors print
HOMEPAGE =		http://www.tug.org/texworks/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			lang/lua \
			x11/qt5 \
			devel/cmake

# c++-11 required for poppler
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Script Qt5ScriptTools Qt5Widgets Qt5Xml c hunspell-1.6
WANTLIB += m poppler poppler-qt5 synctex z

WANTLIB-lua += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} Qt5Concurrent Qt5Core
WANTLIB-lua += Qt5DBus Qt5Gui Qt5Script Qt5ScriptTools Qt5Widgets Qt5Xml m

WANTLIB-python += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB-python += Qt5Script Qt5ScriptTools Qt5Widgets Qt5Xml m python2.7

MULTI_PACKAGES =	-main -lua -python

LIB_DEPENDS =		${MODQT5_LIB_DEPENDS} \
			x11/qt5/qtscript
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			textproc/hunspell \
			print/texlive/base>=2018 \
			print/poppler,,-qt5
LIB_DEPENDS-lua =	${LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}
LIB_DEPENDS-python =	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS-main = 	devel/desktop-file-utils
RUN_DEPENDS-lua =	editors/texworks,-main
RUN_DEPENDS-python =	editors/texworks,-main

MODLUA_SA =		Yes

USE_GMAKE =		Yes
NO_TEST =		Yes

SUBST_VARS +=		MODLUA-VERSION

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS +=	-DWITH_PYTHON=ON \
			-DTeXworks_DIC_DIR=${TRUEPREFIX}/share/mozilla-dicts
# The handling of the manual install dir is odd.
CONFIGURE_ARGS +=	-DTeXworks_MAN_DIR=/man/man1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
