# $OpenBSD: Makefile,v 1.6 2017/11/19 00:53:16 naddy Exp $

COMMENT=	Unicode utilities

DISTNAME=	uniutils-2.27
REVISION=	1
CATEGORIES=	misc

HOMEPAGE=	http://billposer.org/Software/unidesc.html
MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl

LIB_DEPENDS=	devel/gettext

MASTER_SITES=	http://billposer.org/Software/Downloads/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-lintl -liconv"

.include <bsd.port.mk>
