# $OpenBSD: Makefile,v 1.2 2005/03/16 15:34:49 naddy Exp $

COMMENT=		"SOCKS client wrapper for *BSD"
DISTNAME=		dsocks-1.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://monkey.org/~dugsong/dsocks/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>
