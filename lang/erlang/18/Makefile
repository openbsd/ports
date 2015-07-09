# $OpenBSD: Makefile,v 1.4 2015/07/09 19:46:39 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		18.0
MAJ_V=		18
EPOCH=		0
DISTNAME=	otp_src_$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

REVISION-main=	0

VERSION_SPEC=	>=18v0,<19v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

BUILD_DEPENDS+=	textproc/libxslt

CONFIGURE_ARGS=	--without-jinterface	\
		--without-odbc		\
		--enable-threads 	\
		--enable-kernel-poll	\
		--disable-hipe		\
		--enable-smp-support

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread
WANTLIB-main =	${WANTLIB} c crypto kvm ncurses util

WANTLIB-wx += ${WANTLIB} GL GLU stdc++ wx_base wx_base_xml wx_gtk2_adv
WANTLIB-wx += wx_gtk2_aui wx_gtk2_core wx_gtk2_gl wx_gtk2_html wx_gtk2_stc
WANTLIB-wx += wx_gtk2_xrc

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN        4.0 \
COMMON_TEST_VSN 1.11 \
COMPILER_VSN    6.0 \
COSEVENTDOMAIN_VSN      1.2 \
COSEVENT_VSN    2.2 \
COSFILETRANSFER_VSN     1.2 \
COSNOTIFICATION_VSN     1.2 \
COSPROPERTY_VSN 1.2 \
COSTIME_VSN     1.2 \
COSTRANSACTIONS_VSN     1.3 \
CRYPTO_VSN      3.6 \
DEBUGGER_VSN    4.1 \
DIALYZER_VSN    2.8 \
DIAMETER_VSN    1.10 \
EDOC_VSN        0.7.17 \
EI_VSN  3.8 \
ELDAP_VSN       1.2 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  0.4 \
ERL_INTERFACE_VSN       3.8 \
ET_VSN  1.5.1 \
EUNIT_VSN       2.2.10 \
GS_VSN  1.6 \
HIPE_VSN        3.12 \
IC_VSN  4.4 \
INETS_VSN       6.0 \
JINTERFACE_VSN  1.6 \
KERNEL_VSN      4.0 \
MEGACO_VSN      3.18 \
MNESIA_VSN      4.13 \
OBSERVER_VSN    2.1 \
ODBC_VSN        2.11 \
ORBER_VSN       3.8 \
OSE_VSN 1.1 \
OS_MON_VSN      2.4 \
OTP_MIBS_VSN    1.1 \
PARSETOOLS_VSN  2.1 \
PERCEPT_VSN     0.8.11 \
PUBLIC_KEY_VSN  1.0 \
RELTOOL_VSN     0.7 \
RUNTIME_TOOLS_VSN       1.9 \
SASL_VSN        2.5 \
SNMP_VSN        5.2 \
SSH_VSN 4.0 \
SSL_VSN 7.0 \
STDLIB_VSN      2.5 \
SYNTAX_TOOLS_VSN        1.7 \
TEST_SERVER_VSN 3.9 \
TOOLS_VSN       2.8 \
TYPER_VSN       0.9.9 \
WX_VSN  1.4 \
XMERL_VSN       1.3.8 \
WEBTOOL_VSN     0.9 \
ERTS_VSN        7.0

SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
