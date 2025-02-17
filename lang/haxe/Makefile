COMMENT =	toolkit for the Haxe programming language

V =		4.3.6
DIST_TUPLE +=	github HaxeFoundation haxe ${V} .
DIST_TUPLE +=	github HaxeFoundation haxelib \
		f17fffa97554b1bdba37750e3418051f017a5bc2 \
		extra/haxelib_src # MIT
DIST_TUPLE +=	github haxefoundation hx3compat \
		f1f18201e5c0479cb5adf5f6028788b37f37b730 \
		extra/haxelib_src/hx3compat # MIT

LUV_V =		0.5.12
SITES.luv =	https://github.com/aantron/luv/releases/download/${LUV_V}/
DISTFILES.luv =	luv-${LUV_V}.tar.gz

SITES.opam =	https://thfr.info/distfiles/
DISTFILES.opam = haxe-opam-${V}.tar.bz2

CATEGORIES =	lang devel
HOMEPAGE =	https://haxe.org
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+ (Haxe compiler), MIT (standard lib)
# OCaml build deps: LGPL 2.1, BSD-2-clause, ISC, MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m mbedcrypto mbedtls mbedx509 neko pcre2-8 pthread uv z

MODULES =		lang/ocaml \
			sysutils/opam

BUILD_DEPENDS =		devel/p5-IPC-System-Simple \
			lang/nekovm \
			shells/bash \
			textproc/p5-String-ShellQuote

LIB_DEPENDS =		devel/libuv \
			devel/pcre2 \
			lang/nekovm \
			security/polarssl

CFLAGS +=		-I${LOCALBASE}/include \
			-L${LOCALBASE}/lib

MODOPAM_REPO_COMMIT =	e25af452e64b0bd6672dce5f38d878780362341d
MODOPAM_REPO_NAME =	haxe-opam-${V}

CONFIGURE_STYLE +=	opam

MAKE_ENV +=		LUV_USE_SYSTEM_LIBUV=yes

post-extract:
	mv ${WRKDIR}/luv-${LUV_V}/ ${WRKSRC}

.include <bsd.port.mk>
