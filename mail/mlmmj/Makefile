# $OpenBSD: Makefile,v 1.15 2014/04/21 18:57:18 jca Exp $

COMMENT=	mailing list manager

DISTNAME=	mlmmj-1.2.18.1
CATEGORIES=    	mail

HOMEPAGE=	http://mlmmj.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	http://mlmmj.org/releases/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-receive-strip=yes

DOCS=	README* TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
		${PREFIX}/share/doc/mlmmj/README.receive-strip

.include <bsd.port.mk>
