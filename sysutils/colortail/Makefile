# $OpenBSD: Makefile,v 1.1.1.1 2004/02/26 00:30:05 naddy Exp $

COMMENT=		"color-able replacement for tail(1)"

DISTNAME=		colortail-0.3.0
CATEGORIES=		sysutils

HOMEPAGE=		http://www.student.hk-r.se/~pt98jan/colortail.html
MASTER_SITES=           http://www.student.hk-r.se/~pt98jan/
MAINTAINER=		Robert Nagy <thuglife@bsd.hu>

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
