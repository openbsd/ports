# OpenBSD makefile for:    es
# Version required:     0.9a1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.4 1997/12/13 01:03:08 gene Exp $
#

DISTNAME=       es-0.9-alpha1
PKGNAME=	es-0.9a1
CATEGORIES=	shells
MASTER_SITES=   ftp://ftp.sys.toronto.edu/pub/es/

MAINTAINER=	gene@OpenBSD.ORG

post-install:
	@$(ECHO)
	@$(ECHO) "Finished installing $(DISTNAME)"
	@$(ECHO) "To complete the install, you should notify the system"
	@$(ECHO) "that $(PREFIX)/bin/es is a valid shell by adding it to"
	@$(ECHO) "/etc/shells."
	@$(ECHO) "If you are unfamiliar with this file, consult the shells(5)"
	@$(ECHO) "manual page."

.include <bsd.port.mk>
