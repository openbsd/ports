# OpenBSD makefile for:    es
# Version required:     0.9a1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.5 2000/02/11 01:10:12 espie Exp $
#

DISTNAME=       es-0.9-alpha1
PKGNAME=	es-0.9a1
CATEGORIES=	shells
MASTER_SITES=   ftp://ftp.sys.toronto.edu/pub/es/

MAINTAINER=	gene@OpenBSD.ORG

post-install:
	@echo
	@echo "Finished installing $(DISTNAME)"
	@echo "To complete the install, you should notify the system"
	@echo "that $(PREFIX)/bin/es is a valid shell by adding it to"
	@echo "/etc/shells."
	@echo "If you are unfamiliar with this file, consult the shells(5)"
	@echo "manual page."

.include <bsd.port.mk>
