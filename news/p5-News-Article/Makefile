# $OpenBSD: Makefile,v 1.8 2002/10/30 04:13:36 pvalchev Exp $

COMMENT=	"perl module for accessing NNTP articles"

DISTNAME=	News-Article-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
