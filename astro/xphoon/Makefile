# $OpenBSD: Makefile,v 1.15 2004/11/21 12:50:33 espie Exp $

COMMENT=	"set the root window to the moon in its current phase"
DISTNAME=	xphoon
PKGNAME=	xphoon-91.9.18
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=   "Cannot sell."
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "Cannot sell."
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
