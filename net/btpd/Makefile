# $OpenBSD: Makefile,v 1.4 2008/06/05 12:35:14 ajacoutot Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.13
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

WANTLIB=		c crypto m

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
