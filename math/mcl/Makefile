# $OpenBSD: Makefile,v 1.7 2005/07/26 18:50:43 naddy Exp $

COMMENT=	"clustering algorithm for graphs"

V=		05-118
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
CATEGORIES=	math

HOMEPAGE=	http://micans.org/mcl/

MAINTAINER=	Andreas Kahari <andreas.kahari@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
