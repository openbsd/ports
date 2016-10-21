# $OpenBSD: Makefile,v 1.46 2016/10/21 21:15:58 gonzalo Exp $

COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.4.12
CATEGORIES=		editors
HOMEPAGE=		https://www.gnu.org/software/zile/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}

WANTLIB += c gc ncursesw pthread

LIB_DEPENDS=		devel/boehm-gc

BUILD_DEPENDS=		devel/help2man

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
