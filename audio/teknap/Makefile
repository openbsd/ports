# $OpenBSD: Makefile,v 1.12 2006/02/03 20:21:07 steven Exp $

COMMENT=	"console napster client"

VERSION=	1.3g
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
CATEGORIES=	audio
MASTER_SITES=	http://bwap.clawz.com/downloads/

HOMEPAGE=	http://www.TekNap.com/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m ncurses panel pthread

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

WRKDIST=	${WRKDIR}/TekNap

.include <bsd.port.mk>
