# $OpenBSD: Makefile,v 1.14 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"animated simulation of an ideal gas"

DISTNAME=	xgas
PKGNAME=        xgas-1.0
CATEGORIES=     misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/demos/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin.bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
