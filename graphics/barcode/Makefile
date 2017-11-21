# $OpenBSD: Makefile,v 1.14 2017/11/21 00:13:01 naddy Exp $

COMMENT=		convert text strings to printed bars

DISTNAME=		barcode-0.99
CATEGORIES=		graphics
REVISION=		0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c iconv intl m paper

MASTER_SITES=		${MASTER_SITE_GNU:=barcode/}

LIB_DEPENDS=		devel/gettext \
			print/libpaper

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_func_calloc_0_nonnull=yes

post-install:
	rm ${PREFIX}/bin/sample

.include <bsd.port.mk>
