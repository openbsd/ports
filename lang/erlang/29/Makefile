BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
NOT_FOR_ARCHS-wx= alpha arm hppa i386

USE_NOBTCFI=	Yes
USE_WXNEEDED=	Yes

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		29.0.3
DISTNAME=	otp_src_${V}
PORTROACH=	limit:^OTP-${MAJ_V}\.
PKGNAME=	erlang-${V}
PKGNAME-main=	erlang-${V}
PKGNAME-wx=	erlang-wx-${V}
EPOCH=		0

VERSION_SPEC=	>=29v0,<30v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

BUILD_DEPENDS+=	textproc/libxslt

CONFIGURE_STYLE= simple

CONFIGURE_ARGS+=--disable-silent-rules  \
		--without-jinterface	\
		--without-odbc		\
		--enable-kernel-poll	\
		--disable-hipe

ALL_TARGET=	all
INSTALL_TARGET=	install

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/erts/autoconf

MULTI_PACKAGES = -main -wx

WANTLIB =	m ${COMPILER_LIBCXX}
WANTLIB-main += ${WANTLIB} c crypto curses util z

WANTLIB-wx += ${WANTLIB}
WANTLIB-wx += GLU glib-2.0 wx_baseu-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB-wx += wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 wx_gtk3u_stc-3.2
WANTLIB-wx += wx_gtk3u_webview-3.2 wx_gtk3u_xrc-3.2

LIB_DEPENDS-wx +=x11/wxWidgets
LIB_DEPENDS-wx +=devel/glib2
LIB_DEPENDS-wx +=x11/wxWidgets,-webview

RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

AUTOCONF_VERSION = 2.69

UPDATE_PLIST_ARGS = -i V

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        5.5 \
COMMON_TEST_VSN 1.31.1 \
COMPILER_VSN    10.0.2 \
CRYPTO_VSN      5.9.1 \
DEBUGGER_VSN    7.0 \
DIALYZER_VSN    6.0.2 \
DIAMETER_VSN    2.7.1 \
EDOC_VSN        1.5 \
EI_VSN          5.8.1 \
ELDAP_VSN       1.3 \
ET_VSN          1.8 \
EUNIT_VSN       2.11 \
FTP_VSN         1.2.6 \
INETS_VSN       9.7.1 \
KERNEL_VSN      11.0.3 \
MEGACO_VSN      4.9 \
MNESIA_VSN      4.26.1 \
OBSERVER_VSN    2.19 \
ODBC_VSN	2.17 \
OS_MON_VSN      2.12 \
PARSETOOLS_VSN  2.8 \
PUBLIC_KEY_VSN  1.21.3 \
RELTOOL_VSN     1.1 \
RUNTIME_TOOLS_VSN       2.4 \
SASL_VSN        4.4 \
SNMP_VSN        5.20.4 \
SSH_VSN         6.0.2 \
SSL_VSN         11.7.3 \
STDLIB_VSN      8.0.2 \
SYNTAX_TOOLS_VSN        4.1 \
TFTP_VSN        1.3 \
TOOLS_VSN       4.2.1 \
WX_VSN          2.6 \
XMERL_VSN       2.2 \
ERTS_VSN        17.0.3

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-wx}
CONFIGURE_ARGS += --without-wx
.endif

.include <bsd.port.mk>
