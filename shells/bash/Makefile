# $OpenBSD: Makefile,v 1.5 1999/02/19 23:26:48 marc Exp $
#

DISTNAME=       bash-1.14.7
CATEGORIES=	shells
MASTER_SITES=   ${MASTER_SITE_GNU}

BROKEN=		"very old, out of date version: see the \"bash2\" port"
MAINTAINER=	gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/${DISTNAME}

# Don't compress manpages or .so not works.

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/bash.info ${PREFIX}/info/dir
	@$(ECHO) "Finished installing $(DISTNAME)"
	@$(ECHO) "To complete the install, you should notify the system"
	@$(ECHO) "that $(PREFIX)/bin/bash is a valid shell by adding it to"
	@$(ECHO) "/etc/shells."
	@$(ECHO) "If you are unfamiliar with this file, consult the shells(5)"
	@$(ECHO) "manual page."

.include <bsd.port.mk>
