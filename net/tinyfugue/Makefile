# $OpenBSD: Makefile,v 1.11 2000/09/20 22:42:11 avsm Exp $
# $FreeBSD: Makefile,v 1.16 1999/02/16 03:06:21 jseger Exp $

DISTNAME=	tf-40s1
PKGNAME=	tinyfugue-4.0s1
CATEGORIES=	net games
NEED_VERSION=	1.333
MASTER_SITES=	ftp://tf.tcp.com/pub/tinyfugue/ \
		ftp://ftp.demon.co.uk/pub/games/mud/

HOMEPAGE=	http://tf.tcp.com/~hawkeye/tf/

MAINTAINER=	ports@openbsd.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TFVER="${DISTNAME:S/^tf-//}" \
		CC="${CC}" TFDEV_CCFLAGS="${CFLAGS}"

MAKE_FILE=	${WRKSRC}/unix/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyfugue
	${INSTALL_PROGRAM} ${WRKBUILD}/src/tf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/tf.1.nroffman ${PREFIX}/man/man1/tf.1
	${INSTALL_DATA} ${WRKSRC}/tf-lib/* ${PREFIX}/share/tinyfugue

.include <bsd.port.mk>
