# $OpenBSD: Makefile,v 1.5 1999/10/27 19:05:06 fgsch Exp $
#

DISTNAME=	cfs-1.3.3
CATEGORIES=	security
NO_CDROM=	"CRYPTO: Third party crypto not allowed."
MASTER_SITES=	ftp://utopia.hacktic.nl/pub/crypto/disk/ \
		ftp://ftp.informatik.uni-hamburg.de/pub/virus/crypt/disk/

MAINTAINER= 	angelos@openbsd.org

ALL_TARGET=	cfs
MAN1=		cattach.1 cdetach.1 cmkdir.1 cpasswd.1
MAN8=		ccat.8 cfsd.8 cname.8
RESTRICTED=	"contains crypto code"

BROKEN=		"build fails on cfs_fh.c"

do-build:
	(cd ${WRKSRC} ; sh make_with_bad_rpcgen cfs)

do-install:
	@cd ${WRKSRC}; \
	    ${INSTALL_PROGRAM} ccat cfsd cname ${PREFIX}/sbin; \
	    ${INSTALL_PROGRAM} cattach cdetach cmkdir cpasswd ${PREFIX}/bin; \
	    ${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1; \
	    ${INSTALL_MAN} ${MAN8} ${PREFIX}/man/man8; \
	    ${MKDIR} ${PREFIX}/share/doc/cfs; \
	    ${INSTALL_DATA} README.install notes.ms ${PREFIX}/share/doc/cfs; \

.include <bsd.port.mk>
