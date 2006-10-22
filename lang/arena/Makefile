# $OpenBSD: Makefile,v 1.4 2006/10/22 09:00:43 jasper Exp $

COMMENT=	"light-weight scripting language with C-like syntax"

DISTNAME=	arena-0.9.8
CATEGORIES=	lang

HOMEPAGE=	http://www.minimalinux.org/arena/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

REGRESS_TARGET=	test

.include <bsd.port.mk>
