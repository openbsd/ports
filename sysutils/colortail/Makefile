# $OpenBSD: Makefile,v 1.3 2004/04/18 06:41:11 robert Exp $

COMMENT=		"color-able replacement for tail(1)"

DISTNAME=		colortail-0.3.0
CATEGORIES=		sysutils

MASTER_SITES=           http://www.beastie.hu/colortail/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${FILESDIR}/colortail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/colortail
	${INSTALL_DATA} ${WRKSRC}/example-conf/conf* \
			${PREFIX}/share/examples/colortail

.include <bsd.port.mk>
