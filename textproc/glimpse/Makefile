# New ports collection makefile for:	glimpse
# Version required:	4.1
# Date created:		25 Jan 1998
# Whom:			weingart@openbsd.org
#
# $OpenBSD: Makefile,v 1.2 1998/03/01 06:04:57 marc Exp $
#

PKGNAME=	glimpse-4.1
DISTNAME=	glimpse-4.1
DISTFILES=		glimpse-4.1.src.tar.gz
CATEGORIES=	textproc databases
MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/

MAINTAINER=	weingart@openbsd.org

GNU_CONFIGURE=	yes
NO_CDROM=	"Restrictive copyright (don't sell for profit)"
MAN1=		glimpse.1 glimpseindex.1 glimpseserver.1 agrep.1

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "*** ./main.c:3041: virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${MKDIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
