# $OpenBSD: Makefile,v 1.46 2011/12/23 13:40:13 jasper Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R14B04
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-14b.04
EPOCH=		0
CATEGORIES=	lang

# Erlang Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m ncurses pthread ssl util

MAINTAINER=	Alex Popov <alex@seidlitz.ca>

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
		--disable-smp-support

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="-pthread"
AUTOCONF_VERSION=2.59
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

.if ${MACHINE_ARCH} == i386
CONFIGURE_ARGS+=	--enable-ethread-pre-pentium4-compatibility
.endif

MAKE_ENV+=	DESTDIR=$(DESTDIR)

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
SYSTEM_VSN      R14B04 \
APPMON_VSN      2.1.13 \
ASN1_VSN        1.6.18 \
COMMON_TEST_VSN 1.5.5 \
COMPILER_VSN    4.7.5 \
COSEVENT_VSN    2.1.11 \
COSEVENTDOMAIN_VSN      1.1.11 \
COSFILETRANSFER_VSN     1.1.12 \
COSNOTIFICATION_VSN     1.1.17 \
COSPROPERTY_VSN 1.1.14 \
COSTIME_VSN     1.1.11 \
COSTRANSACTIONS_VSN     1.2.11 \
CRYPTO_VSN      2.0.4 \
DEBUGGER_VSN    3.2.6 \
DIALYZER_VSN    2.4.4 \
DIAMETER_VSN    0.10 \
DOCBUILDER_VSN  0.9.8.11 \
EDOC_VSN        0.7.9 \
ERL_DOCGEN_VSN  0.2.6 \
EI_VSN  3.7.5 \
ET_VSN  1.4.4 \
EUNIT_VSN       2.2.1 \
GS_VSN  1.5.14 \
HIPE_VSN        3.8.1 \
IC_VSN  4.2.27 \
INETS_VSN       5.7.1 \
INVISO_VSN      0.6.2 \
JINTERFACE_VSN  1.5.4 \
KERNEL_VSN      2.14.5 \
MEGACO_VSN      3.15.1.1 \
MNESIA_VSN      4.5 \
OBSERVER_VSN    0.9.10 \
ODBC_VSN        2.10.11 \
ORBER_VSN       3.6.22 \
OS_MON_VSN      2.2.7 \
OTP_MIBS_VSN    1.0.6 \
PARSETOOLS_VSN  2.0.6 \
PERCEPT_VSN     0.8.6 \
PMAN_VSN        2.7.1 \
PUBLIC_KEY_VSN  0.13 \
RELTOOL_VSN     0.5.7 \
RUNTIME_TOOLS_VSN       1.8.6 \
SASL_VSN        2.1.10 \
SNMP_VSN        4.21.1 \
SSH_VSN 2.0.8 \
SSL_VSN 4.1.6 \
STDLIB_VSN      1.17.5 \
SYNTAX_TOOLS_VSN        1.6.7.1 \
TEST_SERVER_VSN 3.4.5 \
TOOLBAR_VSN     1.4.2 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6.6.5 \
TV_VSN  2.1.4.7 \
TYPER_VSN       0.9.2 \
WX_VSN  0.99 \
XMERL_VSN       1.2.10 \
WEBTOOL_VSN     0.8.9 \
ERTS_VSN        5.8.5

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
	rm -rf ${DOC_DIR}/lib/${JINTERFACE}
	rm -rf ${DOC_DIR}/lib/${ODBC}
	rm -rf ${DOC_DIR}/man/man7/*MIB.7
	rm -rf ${DOC_DIR}/man/man7/*TM.7
	# resolve confict with audio/speech-dispatcher
	mv ${PREFIX}/bin/run_test ${PREFIX}/bin/run_etest

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
