# $OpenBSD: Makefile,v 1.2 2016/09/01 10:53:27 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.

COMMENT-main=	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		19.0
MAJ_V=		19
EPOCH=		0
DISTNAME=	otp_src_$V
PKGNAME-main=	erlang-$V
PKGNAME-wx=	erlang-wx-$V

VERSION_SPEC=	>=19v0,<20v0
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
ASN1_VSN        4.0.3 \
COMMON_TEST_VSN 1.12.2 \
COMPILER_VSN    7.0 \
COSEVENTDOMAIN_VSN      1.2.1 \
COSEVENT_VSN    2.2.1 \
COSFILETRANSFER_VSN     1.2.1 \
COSNOTIFICATION_VSN     1.2.2 \
COSPROPERTY_VSN 1.2.1 \
COSTIME_VSN     1.2.2 \
COSTRANSACTIONS_VSN     1.3.2 \
CRYPTO_VSN      3.7 \
DEBUGGER_VSN    4.2 \
DIALYZER_VSN    3.0 \
DIAMETER_VSN    1.12 \
EDOC_VSN        0.7.19 \
EI_VSN  3.9 \
ELDAP_VSN       1.2.2 \
EMACS_VSN       2.7.0 \
ERL_DOCGEN_VSN  0.5 \
ERL_INTERFACE_VSN       3.9 \
ET_VSN  1.6 \
EUNIT_VSN       2.3 \
GS_VSN  1.6.1 \
HIPE_VSN        3.15.1 \
IC_VSN  4.4.1 \
INETS_VSN       6.3 \
JINTERFACE_VSN  1.7 \
KERNEL_VSN      5.0 \
MEGACO_VSN      3.18.1 \
MNESIA_VSN      4.14 \
OBSERVER_VSN    2.2 \
ODBC_VSN        2.11.2 \
ORBER_VSN       3.8.2 \
OS_MON_VSN      2.4.1 \
OTP_MIBS_VSN    1.1.1 \
PARSETOOLS_VSN  2.1.2 \
PERCEPT_VSN     0.9 \
PUBLIC_KEY_VSN  1.2 \
RELTOOL_VSN     0.7.1 \
RUNTIME_TOOLS_VSN       1.10 \
SASL_VSN        3.0 \
SNMP_VSN        5.2.3 \
SSH_VSN 4.3 \
SSL_VSN 8.0 \
STDLIB_VSN      3.0 \
SYNTAX_TOOLS_VSN        2.0 \
TOOLS_VSN       2.8.4 \
TYPER_VSN       0.9.11 \
WX_VSN  1.7 \
XMERL_VSN       1.3.11 \
ERTS_VSN        8.0

SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
