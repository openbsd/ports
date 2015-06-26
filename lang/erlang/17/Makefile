# $OpenBSD: Makefile,v 1.7 2015/06/26 07:33:18 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

V=		17.5
MAJ_V=		17
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
REVISION=	2
EPOCH=		0
PKGSPEC=	erlang->=17v0,<18v0

WANTLIB=	c crypto m ncurses pthread util

CONFIGURE_ARGS=	--without-jinterface	\
		--without-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

DOC_DIR=	${PREFIX}/lib/erlang${MAJ_V}/
FAKE_FLAGS =	libdir_suffix="/erlang${MAJ_V}"

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
ASN1_VSN	3.0.4 \
COMMON_TEST_VSN	1.10 \
COMPILER_VSN	5.0.4 \
COSEVENTDOMAIN_VSN	1.1.14 \
COSEVENT_VSN	2.1.15 \
COSFILETRANSFER_VSN	1.1.16 \
COSNOTIFICATION_VSN	1.1.21 \
COSPROPERTY_VSN	1.1.17 \
COSTIME_VSN	1.1.14 \
COSTRANSACTIONS_VSN	1.2.14 \
CRYPTO_VSN	3.5 \
DEBUGGER_VSN	4.0.3 \
DIALYZER_VSN	2.7.4 \
DIAMETER_VSN	1.9 \
EDOC_VSN	0.7.16 \
EI_VSN	3.7.20 \
ELDAP_VSN	1.1.1 \
EMACS_VSN	2.7.0 \
ERL_DOCGEN_VSN	0.3.7 \
ERL_INTERFACE_VSN	3.7.20 \
ET_VSN	1.5 \
EUNIT_VSN	2.2.9 \
GS_VSN	1.5.16 \
HIPE_VSN	3.11.3 \
IC_VSN	4.3.6 \
INETS_VSN	5.10.6 \
JINTERFACE_VSN	1.5.12 \
KERNEL_VSN	3.2 \
MEGACO_VSN	3.17.3 \
MNESIA_VSN	4.12.5 \
OBSERVER_VSN	2.0.4 \
ODBC_VSN	2.10.22 \
ORBER_VSN	3.7.1 \
OSE_VSN	1.0.2 \
OS_MON_VSN	2.3.1 \
OTP_MIBS_VSN	1.0.10 \
PARSETOOLS_VSN	2.0.12 \
PERCEPT_VSN	0.8.10 \
PUBLIC_KEY_VSN	0.23 \
RELTOOL_VSN	0.6.6 \
RUNTIME_TOOLS_VSN	1.8.16 \
SASL_VSN	2.4.1 \
SNMP_VSN	5.1.1 \
SSH_VSN	3.2 \
SSL_VSN	6.0 \
STDLIB_VSN	2.4 \
SYNTAX_TOOLS_VSN	1.6.18 \
TEST_SERVER_VSN	3.8 \
TOOLS_VSN	2.7.2 \
TYPER_VSN	0.9.8 \
WX_VSN	1.3.3 \
XMERL_VSN	1.3.7 \
WEBTOOL_VSN	0.8.10 \
ERTS_VSN	6.4

SYSTEM_VSN=	${V:R}

.include <bsd.port.mk>
