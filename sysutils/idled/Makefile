# $OpenBSD: Makefile,v 1.16 2006/11/16 08:29:34 jolan Exp $

COMMENT=	"log out idle users and those hogging resources"

DISTNAME=	idled-1.16
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.netsw.org/system/tools/process/
HOMEPAGE=	http://www.darkwing.com/idled/

FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST}

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
