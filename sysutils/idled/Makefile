# $OpenBSD: Makefile,v 1.20 2010/10/19 07:43:01 espie Exp $

COMMENT=	log out idle users and those hogging resources

DISTNAME=	idled-1.16
REVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.netsw.org/system/tools/process/

FAKE_FLAGS=	PREFIX=${PREFIX}

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
