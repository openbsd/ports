# $OpenBSD: Makefile,v 1.3 2004/11/21 22:53:58 espie Exp $

COMMENT=	"descramble scrambled DVDs using ACSS"

VER=		0.2
DISTNAME=	libdvd-${VER}
CATEGORIES=	converters
MASTER_SITES=	http://www.rommelwood.de/~hshoexer/${VER}/ \
		http://www.admingilde.org/~hshoexer/${VER}/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"Free speech issue"
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		crypto

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
