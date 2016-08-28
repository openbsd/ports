# $OpenBSD: Makefile,v 1.27 2016/08/28 11:07:14 jca Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.15
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c iconv jpeg m png
WANTLIB += stdc++

MASTER_SITES=	${HOMEPAGE}projects/pekwm/files/
EXTRACT_SUFX=	.tar.bz2
LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/png

NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
