# $OpenBSD: Makefile,v 1.13 2002/10/28 19:53:44 naddy Exp $

COMMENT=	"log out idle users and those hogging resources"

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darkwing.com/idled/download/ \
		ftp://ftp.cs.hope.edu/pub/idled/

FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST}

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
