# $OpenBSD: Makefile,v 1.13 2005/06/23 20:36:39 sturm Exp $

COMMENT=	"X keygrabber for blackbox"

DISTNAME=	bbkeys-0.9.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=	http://bbkeys.sourceforge.net/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xft Xrender c freetype fontconfig m stdc++

MODULES=	converters/libiconv

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${RUN_DEPENDS}
RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
