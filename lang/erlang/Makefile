# $OpenBSD: Makefile,v 1.31 2008/02/14 22:44:36 sthen Exp $

COMMENT=	real-time, concurrent and distributed functional language

V=		R12B-1
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-12b.1
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
GS_VSN  1.5.8 \
IC_VSN  4.2.16 \
TV_VSN  2.1.4.1 \
SSH_VSN 0.9.9.5 \
SSL_VSN 3.9 \
ASN1_VSN        1.5 \
EDOC_VSN        0.7.4 \
HIPE_VSN        3.6.5 \
ODBC_VSN        2.10 \
PMAN_VSN        2.6 \
SASL_VSN        2.1.5.2 \
SNMP_VSN        4.10.1 \
DIALYZER_VSN    1.7.2 \
COSTIME_VSN     1.1.2 \
PARSETOOLS_VSN  1.4.3 \
INETS_VSN       5.0.2 \
ORBER_VSN       3.6.8 \
EMACS_VSN       2.4.13 \
TOOLS_VSN       2.6.1 \
TYPER_VSN       0.1.1 \
XMERL_VSN       1.1.6 \
COMMON_TEST_VSN 1.3.1 \
SYNTAX_TOOLS_VSN        1.5.3 \
EI_VSN  3.5.5.4 \
OTP_MIBS_VSN    1.0.4.1 \
APPMON_VSN      2.1.9 \
CRYPTO_VSN      1.5.1.1 \
COMPILER_VSN    4.5.1 \
DEBUGGER_VSN    3.1.1.2 \
COSEVENT_VSN    2.1.2 \
TOOLBAR_VSN     1.3.0.1 \
INVISO_VSN      0.6 \
KERNEL_VSN      2.12.1 \
MEGACO_VSN      3.7.1 \
MNESIA_VSN      4.4 \
OS_MON_VSN      2.1.5 \
TEST_SERVER_VSN 3.2.1 \
STDLIB_VSN      1.15.1 \
DOCB_VSN        0.9.8 \
COSFILETRANSFER_VSN     1.1.4 \
JINTERFACE_VSN  1.4 \
COSPROPERTY_VSN 1.1.5 \
RUNTIME_TOOLS_VSN       1.7.1 \
PERCEPT_VSN     0.6.2 \
OBSERVER_VSN    0.9.7.4 \
COSEVENTDOMAIN_VSN      1.1.2 \
COSTRANSACTIONS_VSN     1.2.3 \
COSNOTIFICATION_VSN     1.1.6 \
SYSTEM_VSN      R12B \
ERTS_VSN	5.6.1 \
DOCBUILDER_VSN 0.9.8 \
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
	# Ensure dets_v9.erl gets rebuilt
	@rm ${WRKSRC}/lib/stdlib/ebin/dets_v9.beam

post-install:
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	tar zxf ${FULLDISTDIR}/otp_doc_html_${V}.tar.gz -C ${DOC_DIR}
	rm -rf ${DOC_DIR}/lib/${JINTERFACE}
	rm -rf ${DOC_DIR}/lib/${ODBC}

.include <bsd.port.mk>
