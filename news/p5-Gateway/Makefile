# $OpenBSD: Makefile,v 1.4 2001/11/10 15:00:49 espie Exp $

COMMENT=	"perl module to gateway between news and mail"

DISTNAME=	Gateway-0.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.489
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= News

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::security/p5-PGP-Sign \
		::net/p5-libnet \
		::news/p5-News-Article
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
