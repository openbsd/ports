# $OpenBSD: Makefile,v 1.17 2001/03/17 15:46:36 wilfried Exp $

DISTNAME=	cfs-1.3.3
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/filesystems/ \
		ftp://utopia.hacktic.nl/pub/crypto/disk/ \
		ftp://ftp.informatik.uni-hamburg.de/pub/virus/crypt/disk/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	cfs

do-build:
	@cd ${WRKSRC} && env CCTMP="${CC}" CFLAGS="${CFLAGS}" sh make_with_bad_rpcgen cfs

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
