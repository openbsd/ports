# $OpenBSD: Makefile,v 1.7 2000/03/28 08:46:24 brad Exp $

DISTNAME=       cucipop-1.31
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/cucipop/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}" LDFLAGS=""

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} cucipop makevpopdb ${PREFIX}/libexec
	cd ${WRKSRC}; ${INSTALL_MAN} cucipop.8 makevpopdb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
