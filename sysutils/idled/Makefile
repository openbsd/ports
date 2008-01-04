# $OpenBSD: Makefile,v 1.18 2008/01/04 17:48:37 espie Exp $

COMMENT=	log out idle users and those hogging resources

DISTNAME=	idled-1.16
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.netsw.org/system/tools/process/
HOMEPAGE=	http://www.darkwing.com/idled/

FAKE_FLAGS=	PREFIX=${PREFIX}

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
