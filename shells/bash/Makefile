# $OpenBSD: Makefile,v 1.8 1999/12/08 05:26:44 brad Exp $

DISTNAME=	bash-1.14.7
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

MAINTAINER=	ports@openbsd.org

post-install:
	@install-info ${PREFIX}/info/bash.info ${PREFIX}/info/dir
	@echo "Finished installing $(DISTNAME)"
	@echo "To complete the install, you should notify the system"
	@echo "that $(PREFIX)/bin/bash is a valid shell by adding it to"
	@echo "/etc/shells."
	@echo "If you are unfamiliar with this file, consult the shells(5)"
	@echo "manual page."

.include <bsd.port.mk>
