# $OpenBSD: Makefile.inc,v 1.3 2015/06/23 19:33:50 jasper Exp $

COMMENT ?=	real-time, concurrent and distributed functional language

CATEGORIES =	lang

# Erlang Public License
# http://www.erlang.org/EPLICENSE
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://www.erlang.org/
MASTER_SITES ?=	${HOMEPAGE}download/

DISTFILES ?=	${DISTNAME}.tar.gz \
	  	otp_doc_man_${V}.tar.gz \
		otp_doc_html_${V}.tar.gz

EXTRACT_ONLY ?=	${DISTNAME}.tar.gz

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

SUBST_VARS+=SYSTEM_VSN

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'
