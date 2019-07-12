# $OpenBSD: Makefile,v 1.50 2019/07/12 20:46:07 sthen Exp $

COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.4.14
CATEGORIES=		editors
HOMEPAGE=		https://www.gnu.org/software/zile/
REVISION=		0

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses gc pthread

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}


LIB_DEPENDS=		devel/boehm-gc

BUILD_DEPENDS=		devel/help2man

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
