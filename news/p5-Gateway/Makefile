# $OpenBSD: Makefile,v 1.2 2001/03/29 17:25:39 avsm Exp $

COMMENT=	"perl module to gateway between news and mail"

DISTNAME=	Gateway-0.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.364
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= News

MAINTAINER=	Shell Hung <i@shellhung.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/PGP/Sign.pm::security/p5-PGP-Sign \
		${PERL_MODULES}/Net/NNTP.pm::net/p5-libnet \
		${PERL_MODULES}/News/Article.pm::news/p5-News-Article
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

# install example files
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Gateway
.for i in listgate listgate.readme raccpost listgate.m4 raccmod racrmod
	${INSTALL_DATA} ${WRKSRC}/examples/$i \
		${PREFIX}/share/examples/p5-Gateway
.endfor

.include <bsd.port.mk>
