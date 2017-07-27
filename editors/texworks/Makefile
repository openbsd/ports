# $OpenBSD: Makefile,v 1.38 2017/07/27 09:55:44 sthen Exp $

COMMENT-main =		easy to use LaTeX and ConTeXt editor
COMMENT-python =	Python scripting for TeXworks
COMMENT-lua =		Lua scripting for TeXworks

V =			0.4.4
R =			1004
DISTNAME =		texworks-${V}-r${R}

PKGNAME-main =		texworks-${V}
PKGNAME-lua =		texworks-lua-${V}
PKGNAME-python =	texworks-python-${V}

REVISION-main =		3
REVISION-lua =		3
REVISION-python =	3

EPOCH =			0

WRKDIST =		${WRKDIR}/texworks-${V}

CATEGORIES =		editors print
HOMEPAGE =		http://www.tug.org/texworks/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/qmake \
			lang/python \
			lang/lua \
			x11/qt4

MODQMAKE_PROJECTS =	plugins-src/TWLuaPlugin/TWLuaPlugin.pro \
			plugins-src/TWPythonPlugin/TWPythonPlugin.pro \
			TeXworks.pro

# c++-11 required for poppler
COMPILER =		gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE QtDBus QtGui QtScript QtScriptTools QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype hunspell-1.6
WANTLIB += m poppler-qt4 pthread z

WANTLIB-lua =	${MODLUA_WANTLIB}
WANTLIB-lua +=	ICE QtCore QtGui QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB-lua +=	fontconfig freetype m pthread ${COMPILER_LIBCXX}

WANTLIB-python =  ${MODPY_WANTLIB}
WANTLIB-python += ICE QtCore QtGui QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB-python += fontconfig freetype m pthread ${COMPILER_LIBCXX}

MULTI_PACKAGES =	-main -lua -python

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=texworks/}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			qt4->=4.8.2:${MODQT4_LIB_DEPENDS} \
			textproc/hunspell \
			print/poppler,,-qt4
LIB_DEPENDS-lua =	${LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}
LIB_DEPENDS-python =	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS-main = 	print/texlive/base \
			devel/desktop-file-utils
RUN_DEPENDS-lua =	editors/texworks,-main
RUN_DEPENDS-python =	editors/texworks,-main

MODLUA_SA =		Yes

USE_GMAKE =		Yes
NO_TEST =		Yes

SUBST_VARS +=		WRKINST

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} ${MODQMAKE_PROJECTS}

.include <bsd.port.mk>
