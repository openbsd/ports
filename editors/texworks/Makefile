# $OpenBSD: Makefile,v 1.29 2016/10/01 11:54:15 naddy Exp $

COMMENT-main =		easy to use LaTeX and ConTeXt editor
COMMENT-python =	Python scripting for TeXworks
COMMENT-lua =		Lua scripting for TeXworks

V =			0.4.4
R =			1004
DISTNAME =		texworks-${V}-r${R}

PKGNAME-main =		texworks-${V}
PKGNAME-lua =		texworks-lua-${V}
PKGNAME-python =	texworks-python-${V}

REVISION-main =		1
REVISION-lua =		1
REVISION-python =	0

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

WANTLIB += ICE QtDBus QtGui QtScript QtScriptTools QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype hunspell-1.3
WANTLIB += m poppler-qt4 pthread stdc++ z

WANTLIB-lua =	${MODLUA_WANTLIB}
WANTLIB-lua +=	ICE QtCore QtGui QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB-lua +=	fontconfig freetype m stdc++ pthread

WANTLIB-python =  ${MODPY_WANTLIB}
WANTLIB-python += ICE QtCore QtGui QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB-python += fontconfig freetype m stdc++ pthread

MULTI_PACKAGES =	-main -lua -python

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=texworks/}

LIB_DEPENDS-main =	qt4->=4.8.2:${MODQT4_LIB_DEPENDS} \
			textproc/hunspell \
			x11/dbus \
			print/poppler,,-qt4
LIB_DEPENDS-lua =	${MODQT4_LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}
LIB_DEPENDS-python =	${MODQT4_LIB_DEPENDS} \
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
