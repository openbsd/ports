BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		25.0.2
PORTROACH=	limit:^OTP-25\.
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

#REVISION-main=
#REVISION-wx=

VERSION_SPEC=	>=25,<26
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

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/erts/autoconf

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread ${COMPILER_LIBCXX}
WANTLIB-main =	${WANTLIB} c crypto kvm curses util z

WANTLIB-wx += ${WANTLIB} GL GLU
WANTLIB-wx += wx_baseu-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB-wx += wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0
WANTLIB-wx += wx_gtk3u_stc-3.0 wx_gtk3u_xrc-3.0
WANTLIB-wx += glib-2.0 intl

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
LIB_DEPENDS-wx +=devel/glib2

RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

AUTOCONF_VERSION = 2.69

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        5.0.19 \
COMMON_TEST_VSN 1.23 \
COMPILER_VSN    8.2 \
CRYPTO_VSN      5.1.1 \
DEBUGGER_VSN    5.3 \
DIALYZER_VSN    5.0.1 \
DIAMETER_VSN    2.2.6 \
EDOC_VSN        1.2 \
EI_VSN  5.3 \
ELDAP_VSN       1.2.10 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  1.3 \
ERL_INTERFACE_VSN       5.3 \
ET_VSN  1.6.5 \
EUNIT_VSN       2.7.1 \
FTP_VSN 1.1.1 \
INETS_VSN       8.0 \
JINTERFACE_VSN  1.13 \
KERNEL_VSN      8.4.1 \
MEGACO_VSN      4.4 \
MNESIA_VSN      4.21.1 \
OBSERVER_VSN    2.12 \
ODBC_VSN        2.14 \
OS_MON_VSN      2.7.1 \
PARSETOOLS_VSN  2.4 \
PUBLIC_KEY_VSN  1.13 \
RELTOOL_VSN     0.9 \
RUNTIME_TOOLS_VSN       1.19 \
SASL_VSN        4.2 \
SNMP_VSN        5.13 \
SSH_VSN 4.14.1 \
SSL_VSN 10.8.2 \
STDLIB_VSN      4.0.1 \
SYNTAX_TOOLS_VSN        3.0 \
TFTP_VSN        1.0.3 \
TOOLS_VSN       3.5.3 \
WX_VSN  2.2 \
XMERL_VSN       1.3.29 \
ERTS_VSN        13.0.2

.include <bsd.port.mk>
