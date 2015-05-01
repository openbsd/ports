# $OpenBSD: Makefile,v 1.12 2015/05/01 07:34:01 ajacoutot Exp $

COMMENT=		convert text strings to printed bars

DISTNAME=		barcode-0.99
CATEGORIES=		graphics

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m paper

MASTER_SITES=		${MASTER_SITE_GNU:=barcode/}

MODULES=		devel/gettext

LIB_DEPENDS=		print/libpaper

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/bin/sample

.include <bsd.port.mk>
