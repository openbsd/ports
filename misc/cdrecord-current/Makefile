# OpenBSD makefile for:	cdrecord-current
# Version required:			1.6a7
# Date created:				15 Dec 1997
# Whom:					niklas
#
# $OpenBSD: Makefile,v 1.2 1997/12/17 23:05:06 niklas Exp $
#

DISTNAME=	cdrecord-1.6a7
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/cdrecord/alpha

MAINTAINER=	niklas@openbsd.org

WRKSRC=		${WRKDIR}/cdrecord-1.6

# It's pretty easy to add other architectures,
# mail me if you miss a particular one.
ONLY_FOR_ARCHS=	alpha amiga arc hp300 i386 mac68k mvme68k \
		pmax powerpc sparc sun3

USE_GMAKE=	yes
GMAKE=		./Gmake

# Cdrecord's standard install rule installs some unnecessary stuff,
# we instead explicitly install what we want.
OBJDIR=		OBJ/${MACHINE}-openbsd-$(CC)
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cdrecord/${OBJDIR}/cdrecord ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/mkisofs-1.11/${OBJDIR}/mkisofs \
	    ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cdrecord/cdrecord.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/mkisofs-1.11/mkisofs.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
