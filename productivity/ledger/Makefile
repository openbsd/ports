# $OpenBSD: Makefile,v 1.14 2013/08/07 21:58:00 naddy Exp $

COMMENT=	command line double-entry accounting ledger

DISTNAME=	ledger-2.6.3
REVISION=	2
CATEGORIES=	productivity

HOMEPAGE=	http://www.ledger-cli.org/

MAINTAINER=	Sergey Bronnikov <estetus@gmail.com>

SHARED_LIBS=	amounts	0.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/downloads/jwiegley/ledger/

WANTLIB=	c gmp>=4 m pcre stdc++

LIB_DEPENDS=	devel/gmp \
		devel/pcre

SEPARATE_BUILD=	Yes


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EMACS=no
CONFIGURE_ARGS=	--disable-xml \
		--disable-ofx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/doc/ledger
.for f in ledger.texi ledger.vim
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/ledger
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ledger
	${INSTALL_DATA} ${WRKSRC}/sample.dat ${PREFIX}/share/examples/ledger

.include <bsd.port.mk>
