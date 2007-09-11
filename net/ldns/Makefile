# $OpenBSD: Makefile,v 1.1.1.1 2007/09/11 08:20:50 jakob Exp $

COMMENT=	"DNS library modelled after Net::DNS"

VERSION=	1.2.0
DISTNAME=	ldns-${VERSION}
PKGNAME=	ldns-${VERSION}
SHARED_LIBS=	ldns	${VERSION}
CATEGORIES=	net

MASTER_SITES+=	http://www.nlnetlabs.nl/downloads/

HOMEPAGE=	http://www.nlnetlabs.nl/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
