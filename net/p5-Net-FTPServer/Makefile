# $OpenBSD: Makefile,v 1.2 2006/01/08 22:52:06 steven Exp $

COMMENT=	"secure, extensible and configurable Perl FTPd"

DISTNAME=	Net-FTPServer-1.122
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

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

CONFIGURE_STYLE= perl
FAKE_FLAGS=	NOCONF=1 ${DESTDIRNAME}=${WRKINST}
CONFIG_DIR=	${PREFIX}/share/examples/p5-Net-FTPServer

PKG_ARCH=	*

post-install:
	${INSTALL_DATA_DIR} ${CONFIG_DIR}
	${INSTALL_DATA} ${WRKSRC}/ftpd.conf ${CONFIG_DIR}/ftpd.conf

.include <bsd.port.mk>
