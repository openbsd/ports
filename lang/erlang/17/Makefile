# $OpenBSD: Makefile,v 1.1 2015/06/23 16:43:38 jasper Exp $

BROKEN-alpha=	beam/erl_process.c:6692: internal compiler error: in final_scan_insn, at final.c:2449
BROKEN-hppa =	error: No native atomic implementation found.
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

V=		17.5
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
EPOCH=		0
PKGSPEC=	erlang->=17v0,<18v0

DPB_PROPERTIES+=tag:erlang17

WANTLIB=	c crypto m ncurses pthread util

CONFIGURE_ARGS=	--disable-jinterface	\
		--disable-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"
AUTOCONF_VERSION=2.59
AUTOCONF_DIR=	${WRKSRC} ${WRKSRC}/erts
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
SYSTEM_VSN      17.5 \
ELDAP_VSN       1.1.1 \
COSEVENT_VSN    2.1.15 \
OSE_VSN 1.0.2 \
ODBC_VSN        2.10.22 \
EMACS_VSN       2.7.0 \
TOOLS_VSN       2.7.2 \
DEBUGGER_VSN    4.0.3 \
COSTIME_VSN     1.1.14 \
OBSERVER_VSN    2.0.4 \
COMPILER_VSN    5.0.4 \
IC_VSN  4.3.6 \
JINTERFACE_VSN  1.5.12 \
ET_VSN  1.5 \
OTP_MIBS_VSN    1.0.10 \
INETS_VSN       5.10.6 \
TYPER_VSN       0.9.8 \
TEST_SERVER_VSN 3.8 \
EDOC_VSN        0.7.16 \
SSH_VSN 3.2 \
COSFILETRANSFER_VSN     1.1.16 \
SNMP_VSN        5.1.1 \
ASN1_VSN        3.0.4 \
SYNTAX_TOOLS_VSN        1.6.18 \
XMERL_VSN       1.3.7 \
RELTOOL_VSN     0.6.6 \
ORBER_VSN       3.7.1 \
DIAMETER_VSN    1.9 \
CRYPTO_VSN      3.5 \
COSTRANSACTIONS_VSN     1.2.14 \
WX_VSN  1.3.3 \
MEGACO_VSN      3.17.3 \
ERL_DOCGEN_VSN  0.3.7 \
GS_VSN  1.5.16 \
EI_VSN  3.7.20 \
ERL_INTERFACE_VSN       3.7.20 \
DIALYZER_VSN    2.7.4 \
PERCEPT_VSN     0.8.10 \
HIPE_VSN        3.11.3 \
SSL_VSN 6.0 \
KERNEL_VSN      3.2 \
RUNTIME_TOOLS_VSN       1.8.16 \
COMMON_TEST_VSN 1.10 \
EUNIT_VSN       2.2.9 \
PUBLIC_KEY_VSN  0.23 \
PARSETOOLS_VSN  2.0.12 \
SASL_VSN        2.4.1 \
COSPROPERTY_VSN 1.1.17 \
STDLIB_VSN      2.4 \
COSEVENTDOMAIN_VSN      1.1.14 \
OS_MON_VSN      2.3.1 \
COSNOTIFICATION_VSN     1.1.21 \
MNESIA_VSN      4.12.5 \
WEBTOOL_VSN     0.8.10 \
ERTS_VSN        6.4

.for _n _v in ${ERL_VERSIONS}
${_n}=${_v}
${_n:S/_VSN//}=${_n:S/_VSN//:L}-${_v}
SUBST_VARS+=${_n:S/_VSN//}
.endfor

SYSTEM_VSN=	${V:R}
SUBST_VARS+=	SYSTEM_VSN

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

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@echo "SYSTEM_VSN\t`cat ${WRKSRC}/OTP_VERSION` \\"
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
