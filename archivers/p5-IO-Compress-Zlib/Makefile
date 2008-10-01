# $OpenBSD: Makefile,v 1.7 2008/10/01 22:09:27 simon Exp $

COMMENT=	read and write gzip and zip files/buffers
COMES_WITH=	4.5

MODULES=	cpan

DISTNAME=	IO-Compress-Zlib-2.011
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	archivers

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-IO-Compress-Zlib
	perl -pi -e 's,/usr/local/bin,/usr/bin,' ${WRKSRC}/examples/*
	cd ${WRKSRC}/examples && ${INSTALL_SCRIPT} * \
		${PREFIX}/share/examples/p5-IO-Compress-Zlib

.include <bsd.port.mk>
