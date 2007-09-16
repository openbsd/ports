# $OpenBSD: Makefile,v 1.13 2007/09/16 00:33:57 merdely Exp $
# FreeBSD Id: Makefile,v 1.14 1998/04/05 04:46:33 max Exp $

COMMENT=	Kanji -> kana converter

DISTNAME=	kakasi-2.3.4
SHARED_LIBS=	kakasi	3.0
CATEGORIES=	japanese
MASTER_SITES=	http://kakasi.namazu.org/stable/

HOMEPAGE=	http://kakasi.namazu.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
USE_LIBTOOL=		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.1 ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.cat ${PREFIX}/man/ja_JP.EUC/cat1/kakasi.0

.include <bsd.port.mk>
