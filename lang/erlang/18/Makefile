# $OpenBSD: Makefile,v 1.22 2019/06/25 20:25:21 sthen Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		18.3
MAJ_V=		18
EPOCH=		0
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

REVISION-main=	1
REVISION-wx=	2

VERSION_SPEC=	>=18v0,<19v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

BUILD_DEPENDS+=	textproc/libxslt

CONFIGURE_ARGS+=--without-jinterface	\
		--without-odbc		\
		--enable-threads	\
		--enable-kernel-poll	\
		--disable-hipe

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread
WANTLIB-main =	${WANTLIB} c crypto kvm curses util

WANTLIB-wx += ${WANTLIB} ${COMPILER_LIBCXX} GL GLU
WANTLIB-wx += wx_baseu-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB-wx += wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0
WANTLIB-wx += wx_gtk3u_stc-3.0 wx_gtk3u_xrc-3.0

LIB_DEPENDS-wx +=x11/wxWidgets>=3.0.4
RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        4.0.2 \
COMMON_TEST_VSN 1.12 \
COMPILER_VSN    6.0.3 \
COSEVENTDOMAIN_VSN      1.2 \
COSEVENT_VSN    2.2 \
COSFILETRANSFER_VSN     1.2 \
COSNOTIFICATION_VSN     1.2.1 \
COSPROPERTY_VSN 1.2 \
COSTIME_VSN     1.2.1 \
COSTRANSACTIONS_VSN     1.3.1 \
CRYPTO_VSN      3.6.3 \
DEBUGGER_VSN    4.1.2 \
DIALYZER_VSN    2.9 \
DIAMETER_VSN    1.11.2 \
EDOC_VSN        0.7.18 \
EI_VSN  3.8.2 \
ELDAP_VSN       1.2.1 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  0.4.2 \
ERL_INTERFACE_VSN       3.8.2 \
ET_VSN  1.5.1 \
EUNIT_VSN       2.2.13 \
GS_VSN  1.6 \
HIPE_VSN        3.15 \
IC_VSN  4.4 \
INETS_VSN       6.2 \
JINTERFACE_VSN  1.6.1 \
KERNEL_VSN      4.2 \
MEGACO_VSN      3.18 \
MNESIA_VSN      4.13.3 \
OBSERVER_VSN    2.1.2 \
ODBC_VSN        2.11.1 \
ORBER_VSN       3.8.1 \
OSE_VSN 1.1 \
OS_MON_VSN      2.4 \
OTP_MIBS_VSN    1.1 \
PARSETOOLS_VSN  2.1.1 \
PERCEPT_VSN     0.8.11 \
PUBLIC_KEY_VSN  1.1.1 \
RELTOOL_VSN     0.7 \
RUNTIME_TOOLS_VSN       1.9.3 \
SASL_VSN        2.7 \
SNMP_VSN        5.2.2 \
SSH_VSN 4.2.2 \
SSL_VSN 7.3 \
STDLIB_VSN      2.8 \
SYNTAX_TOOLS_VSN        1.7 \
TEST_SERVER_VSN 3.10 \
TOOLS_VSN       2.8.3 \
TYPER_VSN       0.9.10 \
WX_VSN  1.6.1 \
XMERL_VSN       1.3.10 \
WEBTOOL_VSN     0.9.1 \
ERTS_VSN        7.3

SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
