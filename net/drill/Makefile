# $OpenBSD: Makefile,v 1.2 2005/03/02 07:20:20 jakob Exp $

COMMENT=	"dns debugger"

VERSION=	0.9.2
DISTNAME=	drill-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/drill/
HOMEPAGE=	http://www.nlnetlabs.nl/dnssec/drill.html

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto

CONFIGURE_STYLE=	gnu
WRKDIST=		${WRKDIR}/drill

.include <bsd.port.mk>
