# $OpenBSD: Makefile,v 1.15 2007/06/01 01:00:23 aanriot Exp $

COMMENT=	"X keygrabber for blackbox"

DISTNAME=	bbkeys-0.9.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=	http://bbkeys.sourceforge.net/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c freetype expat fontconfig ICE m SM stdc++ X11 Xau \
		Xdmcp Xext Xft Xrender z 

MODULES=	converters/libiconv

USE_X11=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
