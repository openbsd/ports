# $OpenBSD: Makefile,v 1.27 2006/07/28 20:15:39 sturm Exp $

NOT_FOR_ARCHS=	${LP64_ARCHS}

COMMENT=	"cryptographic file system (user-space NFS server)"

DISTNAME=	cfs-1.4.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security

HOMEPAGE=	http://www.crypto.com/software/

# badly worded BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE} \
		ftp://utopia.hacktic.nl/pub/crypto/disk/cfs/

do-build:
	@cd ${WRKSRC} && env CCTMP="${CC}" CFLAGS="${CFLAGS}" sh netbsd_make_with_bad_rpcgen cfs

NO_REGRESS=	Yes

# ccat and cname only work on old-style cfs < 1.3
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cfs
	cd ${WRKSRC} && ${INSTALL_PROGRAM} cfsd ${PREFIX}/sbin
	cd ${WRKSRC} && ${INSTALL_PROGRAM} cattach cdetach cmkdir \
	    cmkkey cpasswd ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} cattach.1 cdetach.1 cmkdir.1 \
	    cmkkey.1 cpasswd.1 ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_MAN} cfsd.8 ${PREFIX}/man/man8
	cd ${WRKSRC} && ${INSTALL_DATA} README.install notes.ms \
	    ${PREFIX}/share/doc/cfs

.include <bsd.port.mk>
