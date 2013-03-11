# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:29 espie Exp $

COMMENT=		color-able replacement for tail(1)

DISTNAME=		colortail-0.3.0
CATEGORIES=		sysutils
REVISION=		0

MASTER_SITES=           http://keyserver.kjsl.com/~jharris/distfiles/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/colortail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/colortail
	${INSTALL_DATA} ${WRKSRC}/example-conf/conf* \
			${PREFIX}/share/examples/colortail

.include <bsd.port.mk>
