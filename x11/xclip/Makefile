# $OpenBSD: Makefile,v 1.6 2009/09/13 18:26:53 martynas Exp $

COMMENT=		command line interface to X selections
DISTNAME=		xclip-0.11
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xclip/}
HOMEPAGE=		http://xclip.sourceforge.net/
MAINTAINER=		Ilya Voronin <ivoronin@ivoronin.pp.ru>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB+=		X11 Xmu c

NO_REGRESS=		yes
USE_X11=		yes
USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
