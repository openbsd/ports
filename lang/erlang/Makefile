# $OpenBSD: Makefile,v 1.32 2008/04/13 07:31:15 steven Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R12B-2
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-12b.2
CATEGORIES=	lang

MAINTAINER=	Jon Olsson <jon@abc.se>

# Erlang Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m ncurses pthread ssl util

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
ET_VSN	1.3 \
GS_VSN	1.5.9 \
IC_VSN	4.2.17 \
TV_VSN	2.1.4.2 \
SSH_VSN	0.9.9.6 \
SSL_VSN	3.9 \
ASN1_VSN	1.5.1 \
EDOC_VSN	0.7.5 \
HIPE_VSN	3.6.6 \
ODBC_VSN	2.10 \
PMAN_VSN	2.6 \
SASL_VSN	2.1.5.2 \
SNMP_VSN	4.10.3 \
DIALYZER_VSN	1.8.0 \
COSTIME_VSN	1.1.3 \
PARSETOOLS_VSN	1.4.4 \
INETS_VSN	5.0.5 \
ORBER_VSN	3.6.9 \
EMACS_VSN	2.4.13 \
TOOLS_VSN	2.6.1 \
TYPER_VSN	0.1.2 \
XMERL_VSN	1.1.8 \
COMMON_TEST_VSN	1.3.1 \
SYNTAX_TOOLS_VSN	1.5.4 \
EI_VSN	3.5.6 \
OTP_MIBS_VSN	1.0.4.1 \
APPMON_VSN	2.1.9 \
CRYPTO_VSN	1.5.1.1 \
COMPILER_VSN	4.5.2 \
DEBUGGER_VSN	3.1.1.2 \
COSEVENT_VSN	2.1.3 \
TOOLBAR_VSN	1.3.0.1 \
INVISO_VSN	0.6 \
KERNEL_VSN	2.12.2 \
MEGACO_VSN	3.7.4 \
MNESIA_VSN	4.4.2 \
OS_MON_VSN	2.1.5 \
TEST_SERVER_VSN	3.2.2 \
STDLIB_VSN	1.15.2 \
DOCBUILDER_VSN	0.9.8.4 \
COSFILETRANSFER_VSN	1.1.5 \
JINTERFACE_VSN	1.4 \
COSPROPERTY_VSN	1.1.6 \
RUNTIME_TOOLS_VSN	1.7.2 \
PERCEPT_VSN	0.7.1 \
OBSERVER_VSN	0.9.7.4 \
COSEVENTDOMAIN_VSN	1.1.3 \
COSTRANSACTIONS_VSN	1.2.4 \
COSNOTIFICATION_VSN	1.1.7 \
SYSTEM_VSN	R12B \
WEBTOOL_VSN	0.8.3.2 \
ERTS_VSN	5.6.2

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
