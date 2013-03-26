# $OpenBSD: Makefile,v 1.12 2013/03/26 08:28:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Pango libraries

DISTNAME=	Pango-1.222
CATEGORIES=	x11 devel
CPAN_AUTHOR=	TSCH

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan \
		devel/gettext

LIB_DEPENDS=	devel/pango

WANTLIB += cairo fontconfig freetype glib-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 z

RUN_DEPENDS=	devel/p5-Glib2>=1.280 \
		graphics/p5-Cairo>=1.101

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
