# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 13:05:27 alek Exp $

COMMENT=	"light-weight scripting language with C-like syntax"

DISTNAME=	arena-0.9.2
CATEGORIES=	lang

HOMEPAGE=	http://www.minimalinux.org/arena/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

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
