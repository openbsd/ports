# $OpenBSD: Makefile,v 1.55 2014/12/28 14:28:34 jasper Exp $

COMMENT=	real-time, concurrent and distributed functional language
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

V=		R15B02
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-15b.02
EPOCH=		0
CATEGORIES=	lang

# Erlang Public License
# http://www.erlang.org/EPLICENSE
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ncurses pthread ssl util

MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.erlang.org/

DISTFILES=	${DISTNAME}.tar.gz \
	  	otp_doc_man_${V}.tar.gz \
		otp_doc_html_${V}.tar.gz

EXTRACT_ONLY=	${DISTNAME}.tar.gz

CONFIGURE_ARGS=	--disable-jinterface	\
		--disable-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"
AUTOCONF_VERSION=2.59
AUTOCONF_DIR=	${WRKSRC} ${WRKSRC}/erts
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

.if ${MACHINE_ARCH} == i386
CONFIGURE_ARGS+=	--enable-ethread-pre-pentium4-compatibility
.elif ${MACHINE_ARCH} == sparc64
CFLAGS+=		-fno-pie
LDFLAGS+=		-nopie
.endif

MAKE_ENV+=	DESTDIR=$(DESTDIR)

NO_TEST=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
SYSTEM_VSN      R15B02 \
APPMON_VSN      2.1.14.1 \
ASN1_VSN        1.8 \
COMMON_TEST_VSN 1.6.2 \
COMPILER_VSN    4.8.2 \
COSEVENT_VSN    2.1.12 \
COSEVENTDOMAIN_VSN      1.1.12 \
COSFILETRANSFER_VSN     1.1.13 \
COSNOTIFICATION_VSN     1.1.18 \
COSPROPERTY_VSN 1.1.15 \
COSTIME_VSN     1.1.12 \
COSTRANSACTIONS_VSN     1.2.12 \
CRYPTO_VSN      2.2 \
DEBUGGER_VSN    3.2.8 \
DIALYZER_VSN    2.5.2 \
DIAMETER_VSN    1.2 \
EDOC_VSN        0.7.10 \
ELDAP_VSN       1.0 \
ERL_DOCGEN_VSN  0.3.2 \
EI_VSN  3.7.8 \
ET_VSN  1.4.4.2 \
EUNIT_VSN       2.2.3 \
GS_VSN  1.5.15.1 \
HIPE_VSN        3.9.2 \
IC_VSN  4.2.31 \
INETS_VSN       5.9.1 \
INVISO_VSN      0.6.3 \
JINTERFACE_VSN  1.5.6 \
KERNEL_VSN      2.15.2 \
MEGACO_VSN      3.16.0.2 \
MNESIA_VSN      4.7.1 \
OBSERVER_VSN    1.2 \
ODBC_VSN        2.10.13 \
ORBER_VSN       3.6.24 \
OS_MON_VSN      2.2.10 \
OTP_MIBS_VSN    1.0.7 \
PARSETOOLS_VSN  2.0.7 \
PERCEPT_VSN     0.8.6.1 \
PMAN_VSN        2.7.1.2 \
PUBLIC_KEY_VSN  0.16 \
RELTOOL_VSN     0.6.1 \
RUNTIME_TOOLS_VSN       1.8.9 \
SASL_VSN        2.2.1 \
SNMP_VSN        4.22.1 \
SSH_VSN 2.1.1 \
SSL_VSN 5.1 \
STDLIB_VSN      1.18.2 \
SYNTAX_TOOLS_VSN        1.6.9 \
TEST_SERVER_VSN 3.5.2 \
TOOLBAR_VSN     1.4.2.2 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6.8 \
TV_VSN  2.1.4.9 \
TYPER_VSN       0.9.4 \
WX_VSN  0.99.2 \
XMERL_VSN       1.3.2 \
WEBTOOL_VSN     0.8.9.1 \
ERTS_VSN        5.9.2

.for _n _v in ${ERL_VERSIONS}
${_n}=${_v}
${_n:S/_VSN//}=${_n:S/_VSN//:L}-${_v}
SUBST_VARS+=${_n:S/_VSN//}
.endfor

SUBST_VARS+=SYSTEM_VSN

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
	# resolve confict with audio/speech-dispatcher
	mv ${PREFIX}/bin/run_test ${PREFIX}/bin/run_etest

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
