# $OpenBSD: Makefile,v 1.10 2015/07/09 19:46:39 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

COMMENT-main =	${COMMENT}
COMMENT-wx=	WxWidgets bindings for Erlang

V=		R16B03-1
MAJ_V=		16
EPOCH=		0
DISTNAME=	otp_src_${V}
PKGNAME-main=	erlang-16b.03
PKGNAME-wx=	erlang-wx-16b.03

REVISION-main=	7

VERSION_SPEC=	>=16v0,<17v0
PKGSPEC-main=	erlang-${VERSION_SPEC}
PKGSPEC-wx=	erlang-wx-${VERSION_SPEC}

CONFIGURE_ARGS=	--without-jinterface	\
		--without-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

MULTI_PACKAGES = -main -wx

WANTLIB =	m pthread
WANTLIB-main =	${WANTLIB} c crypto ncurses util

WANTLIB-wx += ${WANTLIB} GL GLU stdc++ wx_base wx_base_xml wx_gtk2_adv
WANTLIB-wx += wx_gtk2_aui wx_gtk2_core wx_gtk2_gl wx_gtk2_html wx_gtk2_stc
WANTLIB-wx += wx_gtk2_xrc

LIB_DEPENDS-wx +=x11/wxWidgets>=2.8.12p10
RUN_DEPENDS-wx =${BASE_PKGPATH},-main>=${MAJ_V}

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
SYSTEM_VSN	R16B03-1 \
APPMON_VSN	2.1.14.2 \
ASN1_VSN	2.0.4 \
COMMON_TEST_VSN	1.7.4 \
COMPILER_VSN	4.9.4 \
COSEVENT_VSN	2.1.14 \
COSEVENTDOMAIN_VSN	1.1.13 \
COSFILETRANSFER_VSN	1.1.15 \
COSNOTIFICATION_VSN	1.1.20 \
COSPROPERTY_VSN	1.1.16 \
COSTIME_VSN	1.1.13 \
COSTRANSACTIONS_VSN	1.2.13 \
CRYPTO_VSN	3.2 \
DEBUGGER_VSN	3.2.12 \
DIALYZER_VSN	2.6.1 \
DIAMETER_VSN	1.5 \
EDOC_VSN	0.7.12.1 \
ELDAP_VSN	1.0.2 \
ERL_DOCGEN_VSN	0.3.4.1 \
EI_VSN	3.7.15 \
ET_VSN	1.4.4.5 \
EUNIT_VSN	2.2.6 \
GS_VSN	1.5.15.2 \
HIPE_VSN	3.10.2.2 \
IC_VSN	4.3.4 \
INETS_VSN	5.9.8 \
JINTERFACE_VSN	1.5.8 \
KERNEL_VSN	2.16.4 \
MEGACO_VSN	3.17.0.2 \
MNESIA_VSN	4.11 \
OBSERVER_VSN	1.3.1.2 \
ODBC_VSN	2.10.19 \
ORBER_VSN	3.6.26.1 \
OS_MON_VSN	2.2.14 \
OTP_MIBS_VSN	1.0.8 \
PARSETOOLS_VSN	2.0.10 \
PERCEPT_VSN	0.8.8.2 \
PMAN_VSN	2.7.1.4 \
PUBLIC_KEY_VSN	0.21 \
RELTOOL_VSN	0.6.4.1 \
RUNTIME_TOOLS_VSN	1.8.13 \
SASL_VSN	2.3.4 \
SNMP_VSN	4.25 \
SSH_VSN	3.0 \
SSL_VSN	5.3.3 \
STDLIB_VSN	1.19.4 \
SYNTAX_TOOLS_VSN	1.6.13 \
TEST_SERVER_VSN	3.6.4 \
TOOLBAR_VSN	1.4.2.3 \
EMACS_VSN	2.7.0 \
TOOLS_VSN	2.6.13 \
TV_VSN	2.1.4.10 \
TYPER_VSN	0.9.5 \
WX_VSN	1.1.2 \
XMERL_VSN	1.3.6 \
WEBTOOL_VSN	0.8.9.2 \
ERTS_VSN	5.10.4

.include <bsd.port.mk>

