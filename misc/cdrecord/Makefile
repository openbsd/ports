# $OpenBSD: Makefile,v 1.16 2001/03/23 15:56:04 brad Exp $

# It's pretty easy to add other architectures,
# mail me if you miss a particular one.
ONLY_FOR_ARCHS=	alpha amiga arc i386 mac68k mvme68k powerpc sparc sun3

DISTNAME=	cdrecord-1.9
CATEGORIES=	misc
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/cdrecord/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKE_PROGRAM}"

# Cdrecord's standard install rule installs some unnecessary stuff,
# we instead explicitly install what we want.
OBJDIR=		OBJ/${MACHINE}-openbsd-$(CC)

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrecord
	${INSTALL_PROGRAM} ${WRKSRC}/cdrecord/${OBJDIR}/cdrecord ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cdrecord/cdrecord.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/cdrecord

.include <bsd.port.mk>
