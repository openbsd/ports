# $OpenBSD: Makefile,v 1.9 2000/12/25 06:37:18 brad Exp $

DISTNAME=	cucipop-1.31
CATEGORIES=	mail
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/cucipop/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=	cucipop-1.31-v6-20001122.diff.gz:0
PATCH_DIST_STRIP= -p1

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}" LDFLAGS=""

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} cucipop makevpopdb ${PREFIX}/libexec
	cd ${WRKSRC}; ${INSTALL_MAN} cucipop.8 makevpopdb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
