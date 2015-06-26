# $OpenBSD: Makefile.inc,v 1.7 2015/06/26 07:33:17 jasper Exp $

COMMENT ?=	real-time, concurrent and distributed functional language

CATEGORIES =	lang

SHARED_ONLY ?=	Yes

# Erlang 16/17: Erlang Public License
# 	 	http://www.erlang.org/EPLICENSE
# Erlang 18:	Apachev2
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://www.erlang.org/
MASTER_SITES ?=	${HOMEPAGE}download/

DISTFILES ?=	${DISTNAME}.tar.gz \
	  	otp_doc_man_${V}.tar.gz \
		otp_doc_html_${V}.tar.gz

EXTRACT_ONLY ?=	${DISTNAME}.tar.gz

CONFIGURE_STYLE ?=	autoconf no-autoheader
CONFIGURE_ENV ?=	LDFLAGS="${LDFLAGS} -pthread"
AUTOCONF_VERSION ?=	2.59
AUTOCONF_DIR ?=		${WRKSRC} \
	     		${WRKSRC}/erts
MODGNU_CONFIG_GUESS_DIRS ?=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

.if ${MACHINE_ARCH} == i386
CONFIGURE_ARGS +=	--enable-ethread-pre-pentium4-compatibility
.elif ${MACHINE_ARCH} == sparc64
CFLAGS +=		-fno-pie
LDFLAGS +=		-nopie
.endif

USE_GMAKE=	Yes

MAKE_ENV +=	DESTDIR=$(DESTDIR)

NO_TEST ?=	Yes

.for _n _v in ${ERL_VERSIONS}
${_n}=${_v}
${_n:S/_VSN//}=${_n:S/_VSN//:L}-${_v}
SUBST_VARS+=${_n:S/_VSN//}
.endfor

SUBST_VARS+=SYSTEM_VSN MAJ_V

# special cases
EI=		erl_interface-${EI_VSN}
COSEVENT=	cosEvent-${COSEVENT_VSN}
COSEVENTDOMAIN=	cosEventDomain-${COSEVENTDOMAIN_VSN}
COSFILETRANSFER=cosFileTransfer-${COSFILETRANSFER_VSN}
COSNOTIFICATION=cosNotification-${COSNOTIFICATION_VSN}
COSPROPERTY=	cosProperty-${COSPROPERTY_VSN}
COSTIME=	cosTime-${COSTIME_VSN}
COSTRANSACTIONS=cosTransactions-${COSTRANSACTIONS_VSN}

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/' | sort
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sort
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }' | sort

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make/install_bin ${WRKSRC}/erts/etc/common/escript.c

post-install:
	ln -sf ../lib/erlang/lib/${EI}/bin/erl_call ${PREFIX}/bin/erl_call${MAJ_V}
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	tar zxf ${FULLDISTDIR}/otp_doc_html_${V}.tar.gz -C ${DOC_DIR}
	rm -r ${DOC_DIR}/lib/${JINTERFACE}
	rm -r ${DOC_DIR}/lib/${ODBC}
	rm -r ${DOC_DIR}/man/man7/*MIB.7
	rm -r ${DOC_DIR}/man/man7/*TM.7
