# $OpenBSD: Makefile,v 1.1.1.1 2006/01/21 23:35:16 steven Exp $

COMMENT=		"perl module to query Sender Policy Framework"

DISTNAME=		Mail-SPF-Query-1.998
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

MAINTAINER=		David Hill <dhill@mindcry.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=		:p5-Net-CIDR-Lite->=0.15:net/p5-Net-CIDR-Lite \
			:p5-Net-DNS->=0.46:net/p5-Net-DNS \
			:p5-Sys-Hostname-Long-*:net/p5-Sys-Hostname-Long \
			:p5-URI-*:www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
