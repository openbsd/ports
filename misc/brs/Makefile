# $OpenBSD: Makefile,v 1.8 2002/10/27 21:07:53 naddy Exp $

COMMENT=	"bible reader"

DISTNAME=	brs.4.00.l1

PKGNAME=	brs-4.00l1
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/religion/}

MAINTAINER=	J Shoemaker <shoemaker@softhome.net>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/bible
ALL_TARGET=		bible

MAKE_FLAGS=	DEST=${PREFIX}
FAKE_FLAGS=	DEST=${WRKINST}${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
