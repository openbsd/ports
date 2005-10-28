# $OpenBSD: Makefile,v 1.6 2005/10/28 19:43:32 espie Exp $

COMMENT=	"advanced lint: statically check C programs"
DISTNAME=	splint-3.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.splint.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}downloads/

# Has to use bison because splint uses pure parsers
BUILD_DEPENDS=	:bison-*:devel/bison

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

pre-build:
	-rm ${WRKSRC}/src/{cgrammar,llgrammar,mtgrammar,signature}.c

DOCDIR=	${PREFIX}/share/doc/splint

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/html/manual.htm ${DOCDIR}/manual.html

.include <bsd.port.mk>
