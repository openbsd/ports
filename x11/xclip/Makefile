# $OpenBSD: Makefile,v 1.10 2010/11/22 08:37:05 espie Exp $

COMMENT=		command line interface to X selections
DISTNAME=		xclip-0.11
REVISION=		0
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
USE_GMAKE=		yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
