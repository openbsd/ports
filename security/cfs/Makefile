# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:43 espie Exp $

DISTNAME=	cfs-1.3.3
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/filesystems/ \
		ftp://utopia.hacktic.nl/pub/crypto/disk/ \
		ftp://ftp.informatik.uni-hamburg.de/pub/virus/crypt/disk/

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"contains crypto code"

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# Note that this port contains crypto and is subject to US crypto laws.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

ALL_TARGET=	cfs

do-build:
	(cd ${WRKSRC} ; sh make_with_bad_rpcgen cfs)

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cfs
	cd ${WRKSRC} && ${INSTALL_PROGRAM} ccat cfsd cname ${PREFIX}/sbin
	cd ${WRKSRC} && ${INSTALL_PROGRAM} cattach cdetach cmkdir \
	    cpasswd ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} cattach.1 cdetach.1 cmkdir.1 \
	    cpasswd.1 ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_MAN} ccat.8 cfsd.8 cname.8 \
	    ${PREFIX}/man/man8
	cd ${WRKSRC} && ${INSTALL_DATA} README.install notes.ms \
	    ${PREFIX}/share/doc/cfs
	echo Note that your machine MUST be setup as an NFS client and server. 

.include <bsd.port.mk>
