# $OpenBSD: Makefile,v 1.30 2007/12/19 22:51:29 sthen Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R12B-0
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-12b.0
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

# retrieve most of the version list with something like
# find ${WRKSRC} -name 'vsn.mk' -exec \
#	awk '/_VSN =/ { print $1"\t"$3" \\" }' {} \; | grep -v 'PRE'
ERL_VERSIONS=	\
ET_VSN  1.3 \
GS_VSN  1.5.7 \
IC_VSN  4.2.16 \
TV_VSN  2.1.4.1 \
SSH_VSN 0.9.9.3 \
SSL_VSN 3.9 \
ASN1_VSN        1.5 \
EDOC_VSN        0.7.4 \
HIPE_VSN        3.6.4 \
ODBC_VSN        2.0.9 \
PMAN_VSN        2.6 \
SASL_VSN        2.1.5.2 \
SNMP_VSN        4.10 \
DIALYZER_VSN    1.7.1 \
COSTIME_VSN     1.1.2 \
PARSETOOLS_VSN  1.4.2 \
INETS_VSN       5.0 \
ORBER_VSN       3.6.8 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6 \
TYPER_VSN       0.1.1 \
XMERL_VSN       1.1.6 \
COMMON_TEST_VSN 1.3.0 \
SYNTAX_TOOLS_VSN        1.5.3 \
EI_VSN  3.5.5.3 \
OTP_MIBS_VSN    1.0.4.1 \
APPMON_VSN      2.1.9 \
CRYPTO_VSN      1.5.1.1 \
COMPILER_VSN    4.5 \
DEBUGGER_VSN    3.1.1.1 \
COSEVENT_VSN    2.1.2 \
TOOLBAR_VSN     1.3.0.1 \
INVISO_VSN      0.6 \
KERNEL_VSN      2.12 \
MEGACO_VSN      3.7 \
MNESIA_VSN      4.4 \
OS_MON_VSN      2.1.3 \
TEST_SERVER_VSN 3.2.0 \
STDLIB_VSN      1.15 \
DOCB_VSN        0.9.7 \
COSFILETRANSFER_VSN     1.1.4 \
JINTERFACE_VSN  1.4 \
COSPROPERTY_VSN 1.1.5 \
RUNTIME_TOOLS_VSN       1.7 \
PERCEPT_VSN     0.5.0 \
OBSERVER_VSN    0.9.7.4 \
COSEVENTDOMAIN_VSN      1.1.2 \
COSTRANSACTIONS_VSN     1.2.3 \
COSNOTIFICATION_VSN     1.1.6 \
SYSTEM_VSN      R12B \
ERTS_VSN	5.6 \
DOCBUILDER_VSN 0.9.7 \
WEBTOOL_VSN	0.8.3.2 \

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

.include <bsd.port.mk>
