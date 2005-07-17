# $OpenBSD: Makefile,v 1.18 2005/07/17 08:53:54 aanriot Exp $

COMMENT=	"graphical multi-player real-time strategy game for X11"

DISTNAME=       xblast-complete-sounds-2.10.0
PKGNAME=	xblast-2.10.0
CATEGORIES=	games

HOMEPAGE=	http://xblast.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ICE m ossaudio X11

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xblast/}

USE_X11=	Yes
WRKDIST=	${WRKDIR}/${DISTNAME:S/complete-sounds-//}

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ENV=		LDFLAGS="-lossaudio"
CONFIGURE_ARGS=		--enable-sound

NO_REGRESS=	Yes

.include <bsd.port.mk>
