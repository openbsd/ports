# $OpenBSD: Makefile,v 1.3 2005/12/12 08:48:04 alek Exp $

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

FAKE_FLAGS=		DEBUGLIBS=No

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>
