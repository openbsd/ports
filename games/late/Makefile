# $OpenBSD: Makefile,v 1.8 2009/08/19 01:24:57 jolan Exp $

COMMENT=	puzzle game resembling the arcade game Qix
DISTNAME=	late-0.1.0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=late/}

HOMEPAGE=	http://late.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs stdc++ usbhid xcb

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=localstatedir=/var
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/late/
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/late/late.scores

.include <bsd.port.mk>
