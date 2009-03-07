# $OpenBSD: Makefile,v 1.4 2009/03/07 15:37:39 jasper Exp $

COMMENT=		command line interface to X selections
DISTNAME=		xclip-0.08
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11
MASTER_SITES=		${HOMEPAGE}
HOMEPAGE=		http://people.debian.org/~kims/xclip/
MAINTAINER=		Ilya Voronin <ivoronin@ivoronin.pp.ru>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xmu Xt c

NO_REGRESS=		yes
USE_X11=		yes
CONFIGURE_STYLE=	imake

WRKDIST=	${WRKDIR}/xclip

.include <bsd.port.mk>
