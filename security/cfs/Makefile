# $OpenBSD: Makefile,v 1.7 1999/11/24 03:41:22 brad Exp $

DISTNAME=	cfs-1.3.3
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/filesystems/ \
		ftp://utopia.hacktic.nl/pub/crypto/disk/ \
		ftp://ftp.informatik.uni-hamburg.de/pub/virus/crypt/disk/

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"contains crypto code"

MAINTAINER=	angelos@openbsd.org

ALL_TARGET=	cfs

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
