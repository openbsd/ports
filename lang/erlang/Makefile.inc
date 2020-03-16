# $OpenBSD: Makefile.inc,v 1.22 2020/03/16 16:07:45 jasper Exp $

COMMENT ?=	real-time, concurrent and distributed functional language

CATEGORIES =	lang

# Apachev2
PERMIT_PACKAGE =	Yes

HOMEPAGE =	http://www.erlang.org/
MASTER_SITES ?=	${HOMEPAGE}download/

DISTFILES ?=	${DISTNAME}.tar.gz \
		otp_doc_man_${V}.tar.gz

EXTRACT_ONLY ?=	${DISTNAME}.tar.gz

CONFIGURE_STYLE ?=	autoconf no-autoheader
CONFIGURE_ENV ?=	LDFLAGS="${LDFLAGS} -pthread"
AUTOCONF_VERSION ?=	2.59
AUTOCONF_DIR ?=		${WRKSRC} \
			${WRKSRC}/erts \
			${WRKSRC}/lib/wx/
MODGNU_CONFIG_GUESS_DIRS ?=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir \
				${WRKSRC}/lib/wx/autoconf

# "error: No native atomic implementation found"
# Erlang 20 does not support enable/disable-smp-support
.if ${MACHINE_ARCH} == arm || ${MACHINE_ARCH} == hppa
CONFIGURE_ARGS +=	--disable-smp-support
.elif ${MACHINE_ARCH} == i386
CONFIGURE_ARGS +=	--enable-ethread-pre-pentium4-compatibility
.elif ${MACHINE_ARCH} == mips64 || ${MACHINE_ARCH} == mips64el
CFLAGS +=		-mxgot
.elif ${MACHINE_ARCH} == sparc64
CFLAGS +=		-fno-pie
LDFLAGS +=		-nopie
.endif

USE_GMAKE=	Yes

MAKE_ENV +=	DESTDIR=$(DESTDIR)

NO_TEST ?=	Yes

.for _n _v in ${ERL_VERSIONS}
${_n} =		${_v}
ERL_${_n:S/_VSN//} = ${_n:S/_VSN//:L}-${_v}
SUBST_VARS +=	ERL_${_n:S/_VSN//}
.endfor

COMPILER=	base-clang ports-gcc

SUBST_VARS+=	SYSTEM_VSN MAJ_V

# special cases
ERL_EI=			erl_interface-${EI_VSN}
ERL_COSEVENT=		cosEvent-${COSEVENT_VSN}
ERL_COSEVENTDOMAIN=	cosEventDomain-${COSEVENTDOMAIN_VSN}
ERL_COSFILETRANSFER=	cosFileTransfer-${COSFILETRANSFER_VSN}
ERL_COSNOTIFICATION=	cosNotification-${COSNOTIFICATION_VSN}
ERL_COSPROPERTY=	cosProperty-${COSPROPERTY_VSN}
ERL_COSTIME=		cosTime-${COSTIME_VSN}
ERL_COSTRANSACTIONS=cosTransactions-${COSTRANSACTIONS_VSN}

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/' | sort
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sort
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }' | sort

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make/install_bin \
		     ${WRKSRC}/Makefile.in \
		     ${WRKSRC}/erts/etc/common/ct_run.c \
		     ${WRKSRC}/erts/etc/common/dialyzer.c \
		     ${WRKSRC}/erts/etc/common/erlc.c \
		     ${WRKSRC}/erts/etc/common/escript.c \
		     ${WRKSRC}/erts/etc/common/typer.c \
		     ${WRKSRC}/lib/dialyzer/src/dialyzer_plt.erl \
		     ${WRKSRC}/lib/wx/configure.in

post-install:
	ln -sf ../lib/erlang${MAJ_V}/lib/${ERL_EI}/bin/erl_call ${PREFIX}/bin/erl_call${MAJ_V}
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	rm -r ${DOC_DIR}/man/man7/*MIB.7
	rm -r ${DOC_DIR}/man/man7/*TM.7
	if [ ! -x ${PREFIX}/lib/erlang${MAJ_V}/${ERL_ERTS}/bin/beam.smp ]; then \
		cp -v ${PREFIX}/lib/erlang${MAJ_V}/${ERL_ERTS}/bin/beam \
		${PREFIX}/lib/erlang${MAJ_V}/${ERL_ERTS}/bin/beam.smp; fi
