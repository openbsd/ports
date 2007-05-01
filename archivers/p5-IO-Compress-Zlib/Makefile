# $OpenBSD: Makefile,v 1.1.1.1 2007/05/01 19:57:17 steven Exp $

COMMENT=	"read and write gzip and zip files/buffers"

MODULES=	cpan

DISTNAME=	IO-Compress-Zlib-2.004
CATEGORIES=	archivers

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::archivers/p5-Compress-Raw-Zlib \
		::archivers/p5-IO-Compress-Base

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-IO-Compress-Zlib
	perl -pi -e 's,/usr/local/bin,/usr/bin,' ${WRKSRC}/examples/*
	cd ${WRKSRC}/examples && ${INSTALL_SCRIPT} * \
		${PREFIX}/share/examples/p5-IO-Compress-Zlib

.include <bsd.port.mk>
