# OpenBSD makefile for:    scsh
# Version required:     0.5.1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.5 1998/04/12 22:26:30 marc Exp $
#

DISTNAME=	scsh-0.5.1
CATEGORIES=	shells lang
NO_CDROM=	"LIC: Requires licence for redistribution."

MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/
STRIP=

MAINTAINER= 	gene@OpenBSD.ORG

GNU_CONFIGURE=	yes

ALL_TARGET=	enough
MAN1=		scsh.1

post-install:
	(cd ${WRKSRC} ; \
	 ${INSTALL_DATA} README RELEASE NEWS COPYING ${PREFIX}/lib/scsh/doc)
	${RM} -f ${PREFIX}/share/doc/scsh
	$(LN) -fs ${PREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh
	@$(ECHO)
	@$(ECHO) "Finished installing $(DISTNAME)"
	@$(ECHO) "To complete the install, you should notify the system"
	@$(ECHO) "that $(PREFIX)/bin/scsh is a valid shell by adding it to"
	@$(ECHO) "/etc/shells."
	@$(ECHO) "If you are unfamiliar with this file, consult the shells(5)"
	@$(ECHO) "manual page."

.include <bsd.port.mk>
