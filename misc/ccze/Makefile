# $OpenBSD: Makefile,v 1.17 2013/10/01 09:07:16 ajacoutot Exp $

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
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ccze
	${WRKSRC}/src/ccze-dump > ${PREFIX}/share/examples/ccze/cczerc

.include <bsd.port.mk>
