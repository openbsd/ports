# $OpenBSD: Makefile,v 1.9 2002/11/27 07:50:28 ish Exp $

COMMENT=	"console napster client"

VERSION=	1.3g
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.teknap.com/pub/TekNap/

HOMEPAGE=	http://www.TekNap.com/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

WRKDIST=	${WRKDIR}/TekNap

.include <bsd.port.mk>
