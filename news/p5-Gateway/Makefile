# $OpenBSD: Makefile,v 1.7 2002/05/15 17:58:49 espie Exp $

COMMENT=	"perl module to gateway between news and mail"

DISTNAME=	Gateway-0.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.502
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	::security/p5-PGP-Sign \
		::net/p5-libnet \
		::news/p5-News-Article
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
NO_REGRESS=	Yes

# install example files
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Gateway
	${INSTALL_DATA} ${WRKSRC}/examples/*  \
		${PREFIX}/share/examples/p5-Gateway

.include <bsd.port.mk>
