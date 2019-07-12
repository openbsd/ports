# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:14 sthen Exp $
# FreeBSD Id: Makefile,v 1.14 1998/04/05 04:46:33 max Exp $

COMMENT=	Kanji -> kana converter

DISTNAME=	kakasi-2.3.4
SHARED_LIBS=	kakasi	3.0
CATEGORIES=	japanese
MASTER_SITES=	http://kakasi.namazu.org/stable/
REVISION=	0

HOMEPAGE=	http://kakasi.namazu.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE=	Yes

WANTLIB=		c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.1 ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.cat ${PREFIX}/man/ja_JP.EUC/cat1/kakasi.0

.include <bsd.port.mk>
