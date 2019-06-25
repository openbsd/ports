# $OpenBSD: Makefile,v 1.15 2019/06/25 20:25:21 sthen Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		19.3
MAJ_V=		19
EPOCH=		0
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

REVISION-main=	7
REVISION-wx=	4

VERSION_SPEC=	>=19v0,<20v0
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

WANTLIB-wx += ${WANTLIB} GL GLU ${COMPILER_LIBCXX}
WANTLIB-wx += wx_baseu-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB-wx += wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0
WANTLIB-wx += wx_gtk3u_stc-3.0 wx_gtk3u_xrc-3.0

LIB_DEPENDS-wx +=x11/wxWidgets>=3.0.4
RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN	4.0.4 \
COMMON_TEST_VSN	1.14 \
COMPILER_VSN	7.0.4 \
COSEVENTDOMAIN_VSN	1.2.1 \
COSEVENT_VSN	2.2.1 \
COSFILETRANSFER_VSN	1.2.1 \
COSNOTIFICATION_VSN	1.2.2 \
COSPROPERTY_VSN	1.2.1 \
COSTIME_VSN	1.2.2 \
COSTRANSACTIONS_VSN	1.3.2 \
CRYPTO_VSN	3.7.3 \
DEBUGGER_VSN	4.2.1 \
DIALYZER_VSN	3.1 \
DIAMETER_VSN	1.12.2 \
EDOC_VSN	0.8.1 \
EI_VSN	3.9.3 \
ELDAP_VSN	1.2.2 \
EMACS_VSN	2.7.0 \
ERL_DOCGEN_VSN	0.6.1 \
ERL_INTERFACE_VSN	3.9.3 \
ERTS_VSN	8.3 \
ET_VSN	1.6 \
EUNIT_VSN	2.3.2 \
GS_VSN	1.6.2 \
HIPE_VSN	3.15.4 \
IC_VSN	4.4.2 \
INETS_VSN	6.3.6 \
JINTERFACE_VSN	1.7.1 \
KERNEL_VSN	5.2 \
MEGACO_VSN	3.18.1 \
MNESIA_VSN	4.14.3 \
OBSERVER_VSN	2.3.1 \
ODBC_VSN	2.12 \
ORBER_VSN	3.8.2 \
OS_MON_VSN	2.4.2 \
OTP_MIBS_VSN	1.1.1 \
PARSETOOLS_VSN	2.1.4 \
PERCEPT_VSN	0.9 \
PUBLIC_KEY_VSN	1.4 \
RELTOOL_VSN	0.7.3 \
RUNTIME_TOOLS_VSN	1.11.1 \
SASL_VSN	3.0.3 \
SNMP_VSN	5.2.5 \
SSH_VSN	4.4.1 \
SSL_VSN	8.1.1 \
STDLIB_VSN	3.3 \
SYNTAX_TOOLS_VSN	2.1.1 \
TOOLS_VSN	2.9.1 \
TYPER_VSN	0.9.12 \
WX_VSN	1.8 \
XMERL_VSN	1.3.13

SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
