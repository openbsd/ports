# $OpenBSD: Makefile,v 1.23 2019/07/14 00:39:39 naddy Exp $

COMMENT=	log out idle users and those hogging resources

DISTNAME=	idled-1.16
REVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.netsw.org/system/tools/process/

FAKE_FLAGS=	PREFIX=${PREFIX}

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_TEST=	Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
