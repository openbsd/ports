BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		25.2.2
PORTROACH=	limit:^OTP-25\.
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V
EPOCH=		0

REVISION-wx=	0

VERSION_SPEC=	>=25v0,<26v0
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

MAKE_ENV+=	DOC_TARGETS=chunks
ALL_TARGET=	all docs
INSTALL_TARGET=	install install-docs

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/erts/autoconf

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread ${COMPILER_LIBCXX}
WANTLIB-main =	${WANTLIB} c crypto kvm curses util z

WANTLIB-wx += ${WANTLIB} GL GLU
WANTLIB-wx += wx_baseu-3.2 wx_baseu_xml-3.2 wx_gtk3u_aui-3.2
WANTLIB-wx += wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2
WANTLIB-wx += wx_gtk3u_stc-3.2 wx_gtk3u_xrc-3.2
WANTLIB-wx += glib-2.0 intl

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
LIB_DEPENDS-wx +=devel/glib2

.if ${MACHINE_ARCH} != "alpha" && ${MACHINE_ARCH} != "arm" && \
	${MACHINE_ARCH} != "hppa"
LIB_DEPENDS-wx +=x11/wxWidgets,-webkit
WANTLIB-wx += wx_gtk3u_webview-3.2
.endif

RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

AUTOCONF_VERSION = 2.69

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        5.0.21 \
COMMON_TEST_VSN 1.23.3 \
COMPILER_VSN    8.2.3 \
CRYPTO_VSN      5.1.2 \
DEBUGGER_VSN    5.3 \
DIALYZER_VSN    5.0.4 \
DIAMETER_VSN    2.2.7 \
EDOC_VSN        1.2 \
EI_VSN  5.3 \
ELDAP_VSN       1.2.10 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  1.4 \
ERL_INTERFACE_VSN       5.3 \
ET_VSN  1.6.5 \
EUNIT_VSN       2.8.1 \
FTP_VSN 1.1.3 \
INETS_VSN       8.2.1 \
JINTERFACE_VSN  1.13.1 \
KERNEL_VSN      8.5.3 \
MEGACO_VSN      4.4.2 \
MNESIA_VSN      4.21.3 \
OBSERVER_VSN    2.14 \
ODBC_VSN        2.14 \
OS_MON_VSN      2.8 \
PARSETOOLS_VSN  2.4.1 \
PUBLIC_KEY_VSN  1.13.2 \
RELTOOL_VSN     0.9 \
RUNTIME_TOOLS_VSN       1.19 \
SASL_VSN        4.2 \
SNMP_VSN        5.13.3 \
SSH_VSN 4.15.1 \
SSL_VSN 10.8.6 \
STDLIB_VSN      4.2 \
SYNTAX_TOOLS_VSN        3.0 \
TFTP_VSN        1.0.3 \
TOOLS_VSN       3.5.3 \
WX_VSN  2.2.1 \
XMERL_VSN       1.3.30 \
ERTS_VSN        13.1.4

.include <bsd.port.mk>
