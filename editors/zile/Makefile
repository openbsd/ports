# $OpenBSD: Makefile,v 1.40 2012/09/26 19:41:55 gonzalo Exp $

COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.4.8
CATEGORIES=		editors
HOMEPAGE=		http://www.gnu.org/software/zile/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}

WANTLIB += c gc ncursesw pthread

LIB_DEPENDS=		devel/boehm-gc

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
