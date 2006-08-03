# $OpenBSD: Makefile,v 1.4 2006/08/03 23:28:11 espie Exp $

COMMENT=	"command line double-entry accounting ledger"

DISTNAME=	ledger-2.3
CATEGORIES=	productivity

HOMEPAGE=	http://www.newartisans.com/ledger.html

MAINTAINER=	Jim Razmus <jim@bonetruck.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ledger/}

WANTLIB=	m stdc++ c

LIB_DEPENDS=	gmp.>=4::devel/gmp \
		pcre::devel/pcre

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-xml \
		--disable-ofx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/doc/ledger
.for f in ledger.pdf ledger.texi ledger.vim
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/ledger
.endfor

.include <bsd.port.mk>
