# $OpenBSD: Makefile,v 1.9 1999/12/10 14:21:38 brad Exp $

DISTNAME=	bash-1.14.7
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

MAINTAINER=	ports@openbsd.org

# invoke make with STATIC=yes to build a static binary
.if defined(STATIC) && ${STATIC:U} == YES
MAKE_ENV=	CPP_DEFINES="-DSYSDEP_LDFLAGS=-static"
PKGNAME=        ${DISTNAME}-static
.endif

post-install:
	@install-info ${PREFIX}/info/bash.info ${PREFIX}/info/dir
	@echo "Finished installing $(DISTNAME)"
	@echo "To complete the install, you should notify the system"
	@echo "that $(PREFIX)/bin/bash is a valid shell by adding it to"
	@echo "/etc/shells."
	@echo "If you are unfamiliar with this file, consult the shells(5)"
	@echo "manual page."

.include <bsd.port.mk>
