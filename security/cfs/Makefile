# $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:10 marc Exp $
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
	    ${INSTALL_SCRIPT} cfsd.sh ${PREFIX}/etc/rc.d

.include <bsd.port.mk>
