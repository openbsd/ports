# $OpenBSD: Makefile,v 1.6 2002/03/21 21:09:17 espie Exp $

COMMENT=		"perl module to manage mail folders"

DISTNAME=		Mail-Box-1.112
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5
NEED_VERSION=		1.515

MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

PERL_MODULES=		${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=		::devel/p5-Time-TimeDate \
			::mail/p5-MIME-tools
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
