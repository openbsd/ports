# $OpenBSD: Makefile,v 1.4 2001/06/12 16:41:17 avsm Exp $

COMMENT=		"perl module to manage mail folders"

DISTNAME=		Mail-Box-1.112
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5
NEED_VERSION=		1.402

MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

PERL_MODULES=		${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=		${PERL_MODULES}/Date/Parse.pm::devel/p5-Time-TimeDate \
			${PERL_MODULES}/MIME/Tools.pm::mail/p5-MIME-tools
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
