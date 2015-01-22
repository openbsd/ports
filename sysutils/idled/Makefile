# $OpenBSD: Makefile,v 1.22 2015/01/22 22:58:18 naddy Exp $

COMMENT=	log out idle users and those hogging resources

DISTNAME=	idled-1.16
REVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.netsw.org/system/tools/process/

FAKE_FLAGS=	PREFIX=${PREFIX}

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_TEST=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
