# $OpenBSD: Makefile,v 1.25 2015/08/25 14:03:21 sthen Exp $

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

CONFIGURE_STYLE =	simple
MODULES =		x11/qt4 \
			lang/python \
			lang/lua

SHARED_ONLY =		Yes

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

MASTER_SITES =		https://texworks.googlecode.com/files/

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

PLUGIN_SRC =		${WRKSRC}/plugins-src
pre-configure:
	${SUBST_CMD} ${WRKSRC}/TeXworks.pro
	${SUBST_CMD} ${PLUGIN_SRC}/TWLuaPlugin/TWLuaPlugin.pro
	${SUBST_CMD} ${PLUGIN_SRC}/TWPythonPlugin/TWPythonPlugin.pro

do-configure:
	cd ${PLUGIN_SRC}/TWPythonPlugin && qmake4
	cd ${PLUGIN_SRC}/TWLuaPlugin && qmake4
	cd ${WRKSRC} && qmake4

# build plugins first
pre-build:
	cd ${PLUGIN_SRC}/TWPythonPlugin && ${MAKE_PROGRAM}
	cd ${PLUGIN_SRC}/TWLuaPlugin && ${MAKE_PROGRAM}

# install main stuff and then plugins
PLUGIN_INSTALLS =	${PLUGIN_SRC}/TWPythonPlugin \
			${PLUGIN_SRC}/TWLuaPlugin

FAKE_FLAGS +=	INSTALL_ROOT=${WRKINST}
post-install:
	for i in ${PLUGIN_INSTALLS}; do \
		cd $$i && ${MAKE_PROGRAM} -f ${MAKE_FILE} ${FAKE_TARGET} INSTALL_ROOT=${WRKINST}; \
	done

.include <bsd.port.mk>
