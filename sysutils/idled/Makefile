# $OpenBSD: Makefile,v 1.10 2001/06/14 03:18:27 pvalchev Exp $

COMMENT=	"log out idle users and those hogging resources"

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darkwing.com/idled/download/ \
		ftp://ftp.cs.hope.edu/pub/idled/
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST}

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
