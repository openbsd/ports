# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:52 espie Exp $

COMMENT=	secure, extensible and configurable Perl FTPd

MODULES=	cpan
DISTNAME=	Net-FTPServer-1.122
REVISION=	2
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	archivers/p5-Archive-Zip \
		databases/p5-DBI \
		devel/p5-BSD-Resource \
		devel/p5-File-Sync \
		devel/p5-IO-stringy

# GPL
PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	NOCONF=1
CONFIG_DIR=	${PREFIX}/share/examples/p5-Net-FTPServer

post-install:
	${INSTALL_DATA_DIR} ${CONFIG_DIR}
	${INSTALL_DATA} ${WRKSRC}/ftpd.conf ${CONFIG_DIR}/ftpd.conf

.include <bsd.port.mk>
