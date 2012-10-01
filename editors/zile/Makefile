# $OpenBSD: Makefile,v 1.41 2012/10/01 12:58:29 gonzalo Exp $

COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.4.8
REVISION=		0
CATEGORIES=		editors
HOMEPAGE=		http://www.gnu.org/software/zile/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}

WANTLIB += c gc ncursesw

LIB_DEPENDS=		devel/boehm-gc

BUILD_DEPENDS=		devel/help2man

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
