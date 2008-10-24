# $OpenBSD: mono.port.mk,v 1.5 2008/10/24 15:07:13 jasper Exp $

CATEGORIES+=		lang/mono

CONFIGURE_ENV+=		MONO_SHARED_DIR=${TMPDIR}
MAKE_FLAGS+=		MONO_SHARED_DIR=${TMPDIR}

# A list of files where we have to remove the stupid hardcoded .[0-9] major
# version from library names. 
DLLMAP_FILES?=

post-configure:
	@for i in ${DLLMAP_FILES}; do \
		perl -pi -e "s,.so.[0-9],.so,g" ${WRKSRC}/$$i; done
