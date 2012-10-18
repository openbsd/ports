# $OpenBSD: Makefile,v 1.15 2012/10/18 21:23:51 espie Exp $

COMMENT=	log colorizer

DISTNAME=	ccze-0.2.1
REVISION=	3
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

MASTER_SITES=	http://distfiles.bsdfrog.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
