# $OpenBSD: Makefile,v 1.9 2002/06/09 05:31:47 wilfried Exp $

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

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Mail/}

BUILD_DEPENDS=		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
			:p5-MIME-tools-*:mail/p5-MIME-tools
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
