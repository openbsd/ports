# $OpenBSD: Makefile,v 1.4 2013/03/11 11:23:58 espie Exp $

COMMENT=	Unicode utilities

DISTNAME=	uniutils-2.27
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
USE_GROFF =	Yes

.include <bsd.port.mk>
