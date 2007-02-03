# $OpenBSD: Makefile,v 1.24 2007/02/03 11:48:39 steven Exp $

COMMENT=	"real-time, concurrent and distributed functional language"

V=		R11B-3
DISTNAME=	otp_src_${V}
PKGNAME=	erlang-11b.3
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
CONFIGURE_STYLE=autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# retrieve most of the version list with something like
# find ${WRKSRC} -name 'vsn.mk' -exec \
#	awk '/_VSN =/ { print $1"\t"$3" \\" }' {} \; | grep -v 'PRE'
ERL_VERSIONS=	\
KERNEL_VSN	2.11.3 \
APPMON_VSN	2.1.7 \
ASN1_VSN	1.4.4.12 \
COMPILER_VSN	4.4.3 \
COSEVENT_VSN	2.1 \
COSEVENTDOMAIN_VSN	1.1 \
COSFILETRANSFER_VSN	1.1.2 \
COSNOTIFICATION_VSN	1.1.3 \
COSPROPERTY_VSN	1.1.1 \
COSTIME_VSN	1.1 \
COSTRANSACTIONS_VSN	1.2 \
CRYPTO_VSN	1.5 \
DEBUGGER_VSN	3.1 \
DIALYZER_VSN	1.5.1 \
EDOC_VSN	0.7.1 \
EI_VSN	3.5.5.3 \
ET_VSN	1.0 \
GS_VSN	1.5.5 \
HIPE_VSN	3.6.1 \
IC_VSN	4.2.11 \
INETS_VSN	4.7.8 \
INVISO_VSN	0.1 \
JINTERFACE_VSN	1.3 \
MEGACO_VSN	3.5.1 \
MNEMOSYNE_VSN	1.2.6 \
MNESIA_VSN	4.3.3 \
MNESIA_SESSION_VSN	1.1.6 \
OBSERVER_VSN	0.9.7.2 \
ODBC_VSN	2.0.7 \
ORBER_VSN	3.6.4 \
OS_MON_VSN	2.1.2 \
OTP_MIBS_VSN	1.0.4 \
PARSETOOLS_VSN	1.4.1 \
PMAN_VSN	2.5.2 \
RUNTIME_TOOLS_VSN	1.6.2 \
SASL_VSN	2.1.4 \
SNMP_VSN	4.8.4 \
SSH_VSN	0.9.6 \
SSL_VSN	3.1 \
STDLIB_VSN	1.14.3 \
SYNTAX_TOOLS_VSN	1.5.2 \
TOOLBAR_VSN	1.3 \
EMACS_VSN	2.4.13 \
TOOLS_VSN	2.5.3 \
TV_VSN	2.1.3 \
TYPER_VSN	0.1.0 \
XMERL_VSN	1.1 \
ERTS_VSN	5.5.3 \
WEBTOOL_VSN 0.8.3 \
SYSTEM_VSN	R11B \

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
