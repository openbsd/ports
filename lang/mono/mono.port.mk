# $OpenBSD: mono.port.mk,v 1.2 2008/10/16 21:47:10 jasper Exp $

CATEGORIES+=		lang/mono

# A list of files where we have to remove the stupid hardcoded .[0-9] major
# version from library names. 
DLLMAP_FILES?=

post-configure:
	@for i in ${DLLMAP_FILES}; do \
		perl -pi -e "s,.so.[0-9],.so,g" ${WRKSRC}/$$i; done
