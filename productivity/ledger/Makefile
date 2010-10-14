# $OpenBSD: Makefile,v 1.6 2010/10/14 00:02:24 jim Exp $

COMMENT=	command line double-entry accounting ledger

DISTNAME=	ledger-2.6.3
CATEGORIES=	productivity

HOMEPAGE=	http://www.newartisans.com/ledger.html

MAINTAINER=	Sergey Bronnikov <estetus@gmail.com>

SHARED_LIBS=	amounts	0.0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://github.com/downloads/jwiegley/ledger/

WANTLIB=	gmp.>=4 m pcre stdc++

LIB_DEPENDS=	::devel/gmp \
		::devel/pcre

SEPARATE_BUILD=	simple

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
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
