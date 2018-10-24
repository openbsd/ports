# $OpenBSD: Makefile,v 1.17 2018/10/24 14:28:10 sthen Exp $

COMMENT=		color-able replacement for tail(1)

DISTNAME=		colortail-0.3.0
CATEGORIES=		sysutils
REVISION =		4

MASTER_SITES=		http://keyserver.kjsl.com/~jharris/distfiles/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${FILESDIR}/colortail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/colortail
	${INSTALL_DATA} ${WRKSRC}/example-conf/conf* \
			${PREFIX}/share/examples/colortail

.include <bsd.port.mk>
