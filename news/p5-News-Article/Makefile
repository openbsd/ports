# $OpenBSD: Makefile,v 1.5 2001/12/19 20:45:14 shell Exp $

COMMENT=	"perl module for accessing NNTP articles"

DISTNAME=	News-Article-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.502
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= News

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	::security/p5-PGP-Sign \
		::net/p5-libnet
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
NO_REGRESS=	Yes

.include <bsd.port.mk>
