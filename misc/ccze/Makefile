# $OpenBSD: Makefile,v 1.18 2013/10/11 23:50:09 naddy Exp $

COMMENT=	log colorizer

DISTNAME=	ccze-0.2.1
REVISION=	3
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

MASTER_SITES=	https://distfiles.bsdfrog.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses pcre

LIB_DEPENDS=	devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ccze
	${WRKSRC}/src/ccze-dump > ${PREFIX}/share/examples/ccze/cczerc

.include <bsd.port.mk>
