# $OpenBSD: Makefile,v 1.5 2015/06/23 19:41:20 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

V=		R16B03-1
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-16b.03
REVISION=	3
EPOCH=		0
PKGSPEC=	erlang->=16v0,<17v0

WANTLIB=	c crypto m ncurses pthread util

CONFIGURE_ARGS=	--disable-jinterface	\
		--disable-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

DOC_DIR=	${PREFIX}/lib/erlang

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

# special cases
EI=		erl_interface-${EI_VSN}
COSEVENT=	cosEvent-${COSEVENT_VSN}
COSEVENTDOMAIN=	cosEventDomain-${COSEVENTDOMAIN_VSN}
COSFILETRANSFER=cosFileTransfer-${COSFILETRANSFER_VSN}
COSNOTIFICATION=cosNotification-${COSNOTIFICATION_VSN}
COSPROPERTY=	cosProperty-${COSPROPERTY_VSN}
COSTIME=	cosTime-${COSTIME_VSN}
COSTRANSACTIONS=cosTransactions-${COSTRANSACTIONS_VSN}

post-configure:
	@touch ${WRKSRC}/lib/odbc/SKIP

post-install:
	@ln -sf ../lib/erlang/lib/${EI}/bin/erl_call ${PREFIX}/bin/erl_call
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	tar zxf ${FULLDISTDIR}/otp_doc_html_${V}.tar.gz -C ${DOC_DIR}
	rm -r ${DOC_DIR}/lib/${JINTERFACE}
	rm -r ${DOC_DIR}/lib/${ODBC}
	rm -r ${DOC_DIR}/man/man7/*MIB.7
	rm -r ${DOC_DIR}/man/man7/*TM.7

.include <bsd.port.mk>
