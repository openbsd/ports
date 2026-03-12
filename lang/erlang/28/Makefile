BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

USE_NOBTCFI=	Yes
USE_WXNEEDED=	Yes

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		28.4.1
DISTNAME=	otp_src_${V}
PORTROACH=	limit:^OTP-${MAJ_V}\.
PKGNAME=	erlang-${V}
PKGNAME-main=	erlang-${V}
PKGNAME-wx=	erlang-wx-${V}
EPOCH=		0

VERSION_SPEC=	>=28v0,<29v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

BUILD_DEPENDS+=	textproc/libxslt

CONFIGURE_STYLE= simple

CONFIGURE_ARGS+=--disable-silent-rules  \
		--without-jinterface	\
		--without-odbc		\
		--enable-threads	\
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
WANTLIB-wx += wx_gtk3u_xrc-3.2

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
LIB_DEPENDS-wx +=devel/glib2

.if ${MACHINE_ARCH} != "alpha" && ${MACHINE_ARCH} != "arm" \
	&& ${MACHINE_ARCH} != "hppa" && ${MACHINE_ARCH} != "i386"
LIB_DEPENDS-wx +=x11/wxWidgets,-webview
WANTLIB-wx += wx_gtk3u_webview-3.2
.endif

RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

AUTOCONF_VERSION = 2.69

UPDATE_PLIST_ARGS = -i V

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        5.4.3 \
COMMON_TEST_VSN 1.30 \
COMPILER_VSN    9.0.5 \
CRYPTO_VSN      5.8.3 \
DEBUGGER_VSN    6.0.3 \
DIALYZER_VSN    5.4 \
DIAMETER_VSN    2.6.1 \
EDOC_VSN        1.4.1 \
EI_VSN          5.6.4 \
ELDAP_VSN       1.2.16 \
ET_VSN          1.7.3 \
EUNIT_VSN       2.10.2 \
FTP_VSN         1.2.4 \
INETS_VSN       9.6.1 \
KERNEL_VSN      10.6.1 \
MEGACO_VSN      4.8.3 \
MNESIA_VSN      4.25.2 \
OBSERVER_VSN    2.18.2 \
ODBC_VSN	2.16.1 \
OS_MON_VSN      2.11.2 \
PARSETOOLS_VSN  2.7.1 \
PUBLIC_KEY_VSN  1.20.2 \
RELTOOL_VSN     1.0.3 \
RUNTIME_TOOLS_VSN       2.3.1 \
SASL_VSN        4.3.1 \
SNMP_VSN        5.20.1 \
SSH_VSN         5.5.1 \
SSL_VSN         11.5.3 \
STDLIB_VSN      7.3 \
SYNTAX_TOOLS_VSN        4.0.3 \
TFTP_VSN        1.2.4 \
TOOLS_VSN       4.1.4 \
WX_VSN          2.5.4 \
XMERL_VSN       2.1.9 \
ERTS_VSN        16.3

.include <bsd.port.mk>
