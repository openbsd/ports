# $OpenBSD: Makefile,v 1.9 2001/05/06 03:59:01 lebel Exp $

COMMENT=	"log out idle users and those hogging resources"

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darkwing.com/idled/download/ \
		ftp://ftp.cs.hope.edu/pub/idled/
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@cd ${WRKSRC}; make clean

FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}
.include <bsd.port.mk>
