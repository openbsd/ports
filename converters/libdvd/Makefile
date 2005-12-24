# $OpenBSD: Makefile,v 1.6 2005/12/24 15:03:42 espie Exp $

COMMENT=	"descramble scrambled DVDs using ACSS"

VER=		0.3
PKGNAME=	${DISTNAME}p1
DISTNAME=	libdvd-${VER}
CATEGORIES=	converters
MASTER_SITES=	http://www.rommelwood.de/~hshoexer/${VER}/ \
		http://www.admingilde.org/~hshoexer/${VER}/
SHARED_LIBS=	dvd	0.2
MODGNU_SHARED_LIBS=	dvd '-no-undefined'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"Free speech issue"
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		crypto

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
