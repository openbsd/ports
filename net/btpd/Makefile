# $OpenBSD: Makefile,v 1.1.1.1 2007/01/03 08:39:50 robert Exp $

COMMENT=		"BitTorrent Protocol Daemon"

DISTNAME=		btpd-0.12
CATEGORIES=		net

MAINTAINER=		Martin Cronier <hex29a@openbsd.se>

HOMEPAGE=		http://www.murmeldjur.se/btpd/

MASTER_SITES=		${HOMEPAGE} \
			http://people.su.se/~rnyberg/btpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c z ssl m event crypto pthread
LIB_DEPENDS=	 	curl::net/curl

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
