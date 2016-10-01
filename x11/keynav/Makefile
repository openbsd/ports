# $OpenBSD: Makefile,v 1.12 2016/10/01 11:54:17 naddy Exp $

COMMENT=	turns your keyboard into a fast pointer mover

DISTNAME=	keynav-0.20101014.3067
REVISION=	2
EPOCH=		0

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/keynav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=semicomplete/}

WANTLIB += X11 Xext Xinerama c cairo glib-2.0 intl xdo

LIB_DEPENDS=	devel/gettext \
		devel/glib2 \
		graphics/cairo \
		x11/xdotool

MAKE_FLAGS=	CFLAGS="$$(pkg-config --cflags cairo-xlib xinerama glib-2.0) ${CFLAGS}" \
		LDFLAGS="$$(pkg-config --libs cairo-xlib xinerama glib-2.0) ${LDFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/keynav ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/keynav
	${INSTALL_DATA} ${WRKSRC}/keynavrc ${PREFIX}/share/examples/keynav/

.include <bsd.port.mk>
