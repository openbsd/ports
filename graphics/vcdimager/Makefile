# $OpenBSD: Makefile,v 1.5 2006/09/18 21:22:19 steven Exp $

COMMENT=	"(S)VCD authoring software"

VERSION=	0.6.2
DISTNAME=	vcdimager-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics

MASTER_SITES=	http://www.vcdimager.org/pub/vcdimager/vcdimager-0.6/

HOMEPAGE=	http://www.vcdimager.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent
WANTLIB=		c m

.include <bsd.port.mk>
