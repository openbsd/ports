# OpenBSD makefile for:	cdrecord-current
# Version required:			1.6.1
# Date created:				7 Jun 1998
# Whom:					niklas
#
# $OpenBSD: Makefile,v 1.5 1999/03/08 03:26:13 marc Exp $
#

DISTNAME=	cdrecord-1.6.1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/cdrecord/

MAINTAINER=	niklas@openbsd.org

# It's pretty easy to add other architectures,
# mail me if you miss a particular one.
ONLY_FOR_ARCHS=	alpha amiga arc i386 mac68k mvme68k powerpc sparc sun3

USE_GMAKE=	yes
MAKE_ENV=	MAKEPROG=gmake

# Cdrecord's standard install rule installs some unnecessary stuff,
# we instead explicitly install what we want.
OBJDIR=		OBJ/${MACHINE}-openbsd-$(CC)
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cdrecord/${OBJDIR}/cdrecord ${PREFIX}/bin
# We ship mkisofs in OpenBSD 2.3, uncomment these lines if you are on an
# older system.
#	${INSTALL_PROGRAM} ${WRKSRC}/mkisofs-1.11/${OBJDIR}/mkisofs \
#	    ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cdrecord/cdrecord.1 ${PREFIX}/man/man1
#	${INSTALL_MAN} ${WRKSRC}/mkisofs-1.11/mkisofs.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
