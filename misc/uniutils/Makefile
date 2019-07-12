# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:54 sthen Exp $

COMMENT=	Unicode utilities

DISTNAME=	uniutils-2.27
REVISION=	2
CATEGORIES=	misc

HOMEPAGE=	http://billposer.org/Software/unidesc.html
MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl

LIB_DEPENDS=	devel/gettext,-runtime

MASTER_SITES=	http://billposer.org/Software/Downloads/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-lintl -liconv"

.include <bsd.port.mk>
