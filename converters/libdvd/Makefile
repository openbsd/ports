# $OpenBSD: Makefile,v 1.5 2005/08/29 20:28:17 hshoexer Exp $

COMMENT=	"descramble scrambled DVDs using ACSS"

VER=		0.3
PKGNAME=	${DISTNAME}p0
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
