# $OpenBSD: Makefile,v 1.1.1.1 2001/06/13 03:02:36 kevlo Exp $

COMMENT=	"generate index pages for displaying images"

DISTNAME=	indexpage-1.0.2
CATEGORIES=	graphics
NEED_VERSION=	1.414

HOMEPAGE=	http://www.lysator.liu.se/~unicorn/hacks/indexpage/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/Image/Size.pm::graphics/p5-Image-Size \
		convert::graphics/ImageMagick

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/indexpage
	${INSTALL_PROGRAM} ${WRKSRC}/indexpage.pl ${PREFIX}/bin/indexpage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/indexpage

.include <bsd.port.mk>
