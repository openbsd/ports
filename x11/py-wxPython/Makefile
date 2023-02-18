COMMENT-main=	Python bindings for wxWidgets C++ class library
COMMENT-media=	wxMedia support for wxPython
COMMENT-webkit=	wxWebView support for wxPython

V=		4.2.0
DISTNAME=	wxPython-${V}
PKGNAME=	py-${DISTNAME}

# python.port.mk cannot cope with py -> py3 with subpackages
FULLPKGNAME-main=	py3-${DISTNAME}
FULLPKGNAME-media=	py3-wxPython-media-${V}
FULLPKGNAME-webkit=	py3-wxPython-webkit-${V}
FULLPKGPATH-main=	${BUILD_PKGPATH}
FULLPKGPATH-media=	${BUILD_PKGPATH},-media
FULLPKGPATH-webkit=	${BUILD_PKGPATH},-webkit

CATEGORIES=	x11 devel

HOMEPAGE=	https://www.wxpython.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# wxWindows Library Licence (modified LGPL)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/wxWidgets/Phoenix/releases/download/wxPython-${V}/

COMMON_WANTLIB += ${COMPILER_LIBCXX}
COMMON_WANTLIB += m wx_baseu-3.2 wx_baseu_net-3.2 wx_gtk3u_core-3.2

WANTLIB-main += ${COMMON_WANTLIB}
WANTLIB-main += wx_baseu_xml-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2
WANTLIB-main += wx_gtk3u_propgrid-3.2 wx_gtk3u_ribbon-3.2 wx_gtk3u_richtext-3.2
WANTLIB-main += wx_gtk3u_stc-3.2 wx_gtk3u_xrc-3.2

WANTLIB-media += ${COMMON_WANTLIB}
WANTLIB-media += wx_gtk3u_media-3.2

WANTLIB-webkit += ${COMMON_WANTLIB}
WANTLIB-webkit += wx_gtk3u_webview-3.2

MULTI_PACKAGES=		-main -media -webkit

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		devel/doxygen \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-sip${MODPY_FLAVOR}
			
LIB_DEPENDS-main=	x11/wxWidgets

LIB_DEPENDS-media=	x11/wxWidgets,-media

LIB_DEPENDS-webkit=	x11/wxWidgets,-webkit

NO_TEST=		Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} DOXYGEN=${LOCALBASE}/bin/doxygen \
		${MODPY_BIN} build.py dox touch etg --nodoc sip build_py \
		build_py --use_syswx --release --jobs=${MAKE_JOBS}
# substitute 2 above lines with this one when rebuilding after a fix, error...
#		${MODPY_BIN} build.py build_py --use_syswx --jobs=${MAKE_JOBS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} build.py install_py \
		--destdir=${WRKINST}

.include <bsd.port.mk>
