# $OpenBSD: Makefile,v 1.44 2019/09/22 19:34:56 rsadowski Exp $

COMMENT-main=	fast, light and extensible chat client
COMMENT-lua=	Lua bindings for weechat
COMMENT-python=	Python bindings for weechat
COMMENT-ruby=	Ruby bindings for weechat
COMMENT-tcl=	Tcl bindings for weechat

V=		2.6
DISTNAME=	weechat-${V}

PKGNAME-main=	weechat-${V}
PKGNAME-lua=	weechat-lua-${V}
PKGNAME-python=	weechat-python-${V}
PKGNAME-ruby=	weechat-ruby-${V}
PKGNAME-tcl=	weechat-tcl-${V}

CATEGORIES=	net

HOMEPAGE=	https://www.weechat.org/
MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.weechat.org/files/src/

MULTI_PACKAGES=	-main -lua -python -ruby -tcl

WANTLIB-main=	aspell c curl iconv intl m curses perl pthread \
		gcrypt gnutls gpg-error z

WANTLIB-lua=	${MODLUA_WANTLIB} m
WANTLIB-python=	${MODPY_WANTLIB}
WANTLIB-ruby=	${MODRUBY_WANTLIB}
WANTLIB-tcl=	${MODTCL_WANTLIB}

MODULES=	devel/cmake \
		lang/lua \
		lang/python \
		lang/ruby \
		lang/tcl

MODLUA_RUNDEP=	No
MODPY_RUNDEP=	No
MODRUBY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/cpputest

LIB_DEPENDS=	devel/gettext,-runtime \
		security/libgcrypt \
		security/gnutls \
		net/curl \
		textproc/aspell/core

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS-lua=	${MODLUA_LIB_DEPENDS}
RUN_DEPENDS-lua=	net/weechat,-main ${MODLUA_RUN_DEPENDS}

LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
RUN_DEPENDS-python=	net/weechat,-main ${MODPY_RUN_DEPENDS}

LIB_DEPENDS-ruby=	${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	net/weechat,-main ${MODRUBY_RUN_DEPENDS}

LIB_DEPENDS-tcl=	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS-tcl=	net/weechat,-main ${MODTCL_RUN_DEPENDS}

TEST_DEPENDS +=	devel/cpputest

CONFIGURE_ARGS+=-DENABLE_SPELL=ON \
		-DENABLE_GUILE=OFF \
		-DENABLE_RUBY=ON \
		-DENABLE_LUA=ON \
		-DENABLE_TCL=ON \
		-DENABLE_PHP=OFF \
		-DENABLE_PYTHON=ON \
		-DENABLE_JAVASCRIPT=OFF \
		-DHAVE_BACKTRACE=OFF \
		-DENABLE_TESTS=ON \
		-DCA_FILE=/etc/ssl/cert.pem \
		-DTCL_TCLSH=${MODTCL_BIN} \
		-DTCL_INCLUDE_PATH=${MODTCL_INCDIR} \
		-DMODTCL_LIB=${MODTCL_LIB}

pre-configure:
	rm -f ${WRKSRC}/cmake/{FindLua,FindRuby,FindTCL}.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/weechat
	${INSTALL_DATA} ${WRKSRC}/doc/en/weechat_*.en.adoc \
	${PREFIX}/share/doc/weechat/

.include <bsd.port.mk>
