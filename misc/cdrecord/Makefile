# $OpenBSD: Makefile,v 1.21 2002/03/21 21:09:18 espie Exp $

COMMENT=	"creates CD's on a CD-Recorder"

# It's pretty easy to add other architectures,
# mail me if you miss a particular one.
ONLY_FOR_ARCHS=	alpha amiga hp300 i386 mac68k macppc mvme68k sparc sun3

DISTNAME=	cdrecord-1.9
CATEGORIES=	misc
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/cdrecord/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	INS_BASE="${PREFIX}"

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKE_PROGRAM}"

# Cdrecord's standard install rule installs some unnecessary stuff,
# we instead explicitly install what we want.
OBJDIR=		OBJ/${MACHINE}-openbsd-${CC}

.if ${MACHINE} != i386
post-extract:
	@cd ${WRKSRC}/RULES && \
	  ln -sf i386-openbsd-gcc.rul ${MACHINE}-openbsd-gcc.rul; \
	  ln -sf i386-openbsd-cc.rul ${MACHINE}-openbsd-cc.rul
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrecord
	${INSTALL_PROGRAM} ${WRKSRC}/cdrecord/${OBJDIR}/cdrecord ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cdda2wav/${OBJDIR}/cdda2wav ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cdrecord/cdrecord.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cdda2wav/cdda2wav.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/cdrecord

.include <bsd.port.mk>
