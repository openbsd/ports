COMMENT=		wm-dockapp; mandelbrot explorer

DISTNAME=		wmMand-1.3.2
PKGNAME=		${DISTNAME:L}
CATEGORIES=     	misc x11 x11/windowmaker

HOMEPAGE=		https://sourceforge.net/p/wmmand/news/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wmmand/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		graphics/ImageMagick \
			graphics/xv

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

post-extract:
	@cd ${WRKSRC} && gunzip wmMand.6.gz

.include <bsd.port.mk>
