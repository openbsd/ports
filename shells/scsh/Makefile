# OpenBSD makefile for:    scsh
# Version required:     0.5.1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.8 2000/03/23 05:33:36 turan Exp $
#

DISTNAME=	scsh-0.5.1
CATEGORIES=	shells lang

MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/
STRIP=

MAINTAINER= 	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	yes

ALL_TARGET=	enough
MAN1=		scsh.1

post-install:
	(cd ${WRKSRC} ; \
	 ${INSTALL_DATA} README RELEASE NEWS COPYING ${PREFIX}/lib/scsh/doc)
	rm -f ${PREFIX}/share/doc/scsh
	ln -fs ${PREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh
	@echo
	@echo "Finished installing $(DISTNAME)"
	@echo "To complete the install, you should notify the system"
	@echo "that $(PREFIX)/bin/scsh is a valid shell by adding it to"
	@echo "/etc/shells."
	@echo "If you are unfamiliar with this file, consult the shells(5)"
	@echo "manual page."

.include <bsd.port.mk>
