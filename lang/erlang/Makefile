# $OpenBSD: Makefile,v 1.36 2009/08/20 17:37:28 sthen Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R12B-5
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-12b.5
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
		--enable-kernel-poll

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.59
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-version' to update this list
ERL_VERSIONS=	\
ET_VSN  1.3 \
GS_VSN  1.5.9 \
IC_VSN  4.2.19 \
TV_VSN  2.1.4.2 \
SSH_VSN 1.0.2 \
SSL_VSN 3.10 \
ASN1_VSN        1.6.2 \
EDOC_VSN        0.7.6.2 \
HIPE_VSN        3.6.9 \
ODBC_VSN        2.10.3 \
PMAN_VSN        2.6 \
SASL_VSN        2.1.5.4 \
SNMP_VSN        4.12 \
DIALYZER_VSN    1.8.3 \
COSTIME_VSN     1.1.4 \
PARSETOOLS_VSN  1.4.5 \
EUNIT_VSN       2.0 \
INETS_VSN       5.0.12 \
ORBER_VSN       3.6.10 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6.2 \
TYPER_VSN       0.1.5 \
XMERL_VSN       1.1.10 \
COMMON_TEST_VSN 1.3.4 \
SYNTAX_TOOLS_VSN        1.5.6 \
EI_VSN  3.5.9 \
OTP_MIBS_VSN    1.0.4.1 \
APPMON_VSN      2.1.9 \
CRYPTO_VSN      1.5.3 \
COMPILER_VSN    4.5.5 \
DEBUGGER_VSN    3.1.1.4 \
COSEVENT_VSN    2.1.4 \
TOOLBAR_VSN     1.3.0.1 \
INVISO_VSN      0.6 \
KERNEL_VSN      2.12.5 \
MEGACO_VSN      3.9.1.1 \
MNESIA_VSN      4.4.7 \
OS_MON_VSN      2.1.8 \
TEST_SERVER_VSN 3.2.4 \
STDLIB_VSN      1.15.5 \
DOCBUILDER_VSN  0.9.8.4 \
COSFILETRANSFER_VSN     1.1.6 \
JINTERFACE_VSN  1.4.2 \
COSPROPERTY_VSN 1.1.7 \
RUNTIME_TOOLS_VSN       1.7.3 \
PERCEPT_VSN     0.7.3 \
OBSERVER_VSN    0.9.7.4 \
COSEVENTDOMAIN_VSN      1.1.4 \
COSTRANSACTIONS_VSN     1.2.5 \
COSNOTIFICATION_VSN     1.1.9 \
PUBLIC_KEY_VSN  0.1 \
SYSTEM_VSN      R12B \
WEBTOOL_VSN     0.8.3.2 \
ERTS_VSN        5.6.5

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
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	tar zxf ${FULLDISTDIR}/otp_doc_html_${V}.tar.gz -C ${DOC_DIR}
	rm -rf ${DOC_DIR}/lib/${JINTERFACE}
	rm -rf ${DOC_DIR}/lib/${ODBC}

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN =/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
