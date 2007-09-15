# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:53 merdely Exp $

COMMENT=	DNS debugger

VERSION=	1.2.0
DISTNAME=	ldns-${VERSION}
PKGNAME=	drill-${VERSION}
CATEGORIES=	net

MASTER_SITES+=	http://www.nlnetlabs.nl/downloads/

HOMEPAGE=	http://www.nlnetlabs.nl/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ssl crypto
LIB_DEPENDS+=		ldns::net/ldns

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

WRKSRC=			${WRKDIST}/drill

.include <bsd.port.mk>
