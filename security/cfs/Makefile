# $OpenBSD: Makefile,v 1.8 1999/12/09 04:46:18 brad Exp $

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
	@mkdir -p ${PREFIX}/share/doc/cfs
.for f in ccat cfsd cname
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/sbin
.endfor
.for f in cattach cdetach cmkdir cpasswd
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
.for f in cattach.1 cdetach.1 cmkdir.1 cpasswd.1
	${INSTALL_MAN} ${WRKSRC}/${f} ${PREFIX}/man/man1
.endfor
.for f in ccat.8 cfsd.8 cname.8
	${INSTALL_MAN} ${WRKSRC}/${f} ${PREFIX}/man/man8
.endfor
.for f in README.install notes.ms
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/cfs
.endfor

.include <bsd.port.mk>
