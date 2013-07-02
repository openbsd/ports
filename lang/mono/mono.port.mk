# $OpenBSD: mono.port.mk,v 1.22 2013/07/02 08:36:16 espie Exp $

# XXX list in infrastructure/mk/arch-defines.mk
# XXX arm powerpc (no support for sigcontext)
ONLY_FOR_ARCHS?=	${MONO_ARCHS}

CATEGORIES+=		lang/mono

CONFIGURE_ENV+=		MONO_SHARED_DIR=${TMPDIR}
MAKE_FLAGS+=		MONO_SHARED_DIR=${TMPDIR}

MODMONO_BUILD_DEPENDS=	lang/mono
MODMONO_RUN_DEPENDS=	lang/mono

MODMONO_DEPS?=		Yes

.if ${MODMONO_DEPS:L} != "no"
BUILD_DEPENDS+=		${MODMONO_BUILD_DEPENDS}
RUN_DEPENDS+=		${MODMONO_RUN_DEPENDS}
.endif

# A list of files where we have to remove the stupid hardcoded .[0-9] major
# version from library names. 
DLLMAP_FILES?=

.if defined(MODMONO_NANT) && ${MODMONO_NANT:L} == "yes"
NANT?=		nant
NANT_FLAGS?=

BUILD_DEPENDS+= devel/nant

MODMONO_BUILD_TARGET=	cd ${WRKSRC} && ${MAKE_FLAGS} ${NANT} ${NANT_FLAGS}
MODMONO_INSTALL_TARGET=	cd ${WRKSRC} && ${MAKE_FLAGS} ${NANT} ${NANT_FLAGS} \
	-D:prefix="${PREFIX}" install

.  if !target(do-build)
do-build:
	@${MODMONO_BUILD_TARGET}
.  endif

.  if !target(do-install)
do-install:
	@${MODMONO_INSTALL_TARGET}
.  endif

.endif

post-configure:
	@for i in ${DLLMAP_FILES}; do \
		perl -pi -e 's,\.so(\.[0-9]+)+,\.so,g' ${WRKSRC}/$$i; done
