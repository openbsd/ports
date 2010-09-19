# $OpenBSD: Makefile,v 1.38 2010/09/19 12:52:49 kili Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R13B04
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-13b.04
REVISION=	0
CATEGORIES=	lang

# Erlang Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m ncurses pthread ssl util

MAINTAINER=	Alex Popov <alex@seidlitz.ca>

MASTER_SITES=	http://www.erlang.org/download/

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
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="-pthread"
AUTOCONF_VERSION=2.59
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

MAKE_ENV+=	DESTDIR=$(DESTDIR)

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
SYSTEM_VSN      R13B04 \
APPMON_VSN      2.1.11 \
ASN1_VSN        1.6.13 \
COMMON_TEST_VSN 1.4.7 \
COMPILER_VSN    4.6.5 \
COSEVENT_VSN    2.1.8 \
COSEVENTDOMAIN_VSN      1.1.8 \
COSFILETRANSFER_VSN     1.1.10 \
COSNOTIFICATION_VSN     1.1.13 \
COSPROPERTY_VSN 1.1.11 \
COSTIME_VSN     1.1.8 \
COSTRANSACTIONS_VSN     1.2.9 \
CRYPTO_VSN      1.6.4 \
DEBUGGER_VSN    3.2.2 \
DIALYZER_VSN    2.2.0 \
DOCBUILDER_VSN  0.9.8.7 \
EDOC_VSN        0.7.6.6 \
ERL_DOCGEN_VSN  0.2 \
EI_VSN  3.6.5 \
EUNIT_VSN       2.1.5 \
ET_VSN		1.4 \
INETS_VSN	5.3 \
GS_VSN  1.5.11 \
HIPE_VSN        3.7.5 \
IC_VSN  4.2.24 \
INVISO_VSN      0.6.1 \
JINTERFACE_VSN  1.5.3 \
KERNEL_VSN      2.13.5 \
MEGACO_VSN      3.14 \
MNESIA_VSN      4.4.13 \
OBSERVER_VSN    0.9.8.2 \
ODBC_VSN        2.10.7 \
ORBER_VSN       3.6.15 \
OS_MON_VSN      2.2.5 \
OTP_MIBS_VSN    1.0.6 \
PARSETOOLS_VSN  2.0.2 \
PERCEPT_VSN     0.8.4 \
PMAN_VSN        2.7.1 \
PUBLIC_KEY_VSN  0.5 \
RELTOOL_VSN     0.5.3 \
RUNTIME_TOOLS_VSN       1.8.3 \
SASL_VSN        2.1.9 \
SNMP_VSN        4.16 \
SSH_VSN 1.1.8 \
SSL_VSN 3.10.8 \
STDLIB_VSN      1.16.5 \
SYNTAX_TOOLS_VSN        1.6.5 \
TEST_SERVER_VSN 3.3.6 \
TOOLBAR_VSN     1.4.1 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6.5.1 \
TV_VSN  2.1.4.4 \
WX_VSN  0.98.5 \
TYPER_VSN       0.1.7.4 \
XMERL_VSN       1.2.4 \
WEBTOOL_VSN     0.8.6 \
ERTS_VSN        5.7.5


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

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN =/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
