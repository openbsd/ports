# $OpenBSD: Makefile,v 1.5 2013/10/19 20:57:20 schwarze Exp $

COMMENT=	Unicode utilities

DISTNAME=	uniutils-2.27
REVISION=	0
CATEGORIES=	misc

HOMEPAGE=	http://billposer.org/Software/unidesc.html
MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MODULES=	devel/gettext

MASTER_SITES=	http://billposer.org/Software/Downloads/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-lintl -liconv"

.include <bsd.port.mk>
