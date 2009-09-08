# $OpenBSD: Makefile,v 1.6 2009/09/08 21:10:59 bluhm Exp $

COMMENT=	secure, extensible and configurable Perl FTPd

MODULES=	cpan
DISTNAME=	Net-FTPServer-1.122
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	net

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::archivers/p5-Archive-Zip \
		::databases/p5-DBI \
		::devel/p5-BSD-Resource \
		::devel/p5-File-Sync \
		::devel/p5-IO-stringy

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	NOCONF=1
CONFIG_DIR=	${PREFIX}/share/examples/p5-Net-FTPServer

post-install:
	${INSTALL_DATA_DIR} ${CONFIG_DIR}
	${INSTALL_DATA} ${WRKSRC}/ftpd.conf ${CONFIG_DIR}/ftpd.conf

.include <bsd.port.mk>
