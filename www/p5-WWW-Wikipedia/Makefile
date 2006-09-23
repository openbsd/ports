# $OpenBSD: Makefile,v 1.1.1.1 2006/09/23 15:39:13 jasper Exp $

PKG_ARCH=		*

COMMENT=		"automated interface to the Wikipedia encyclopedia"

DISTNAME=		WWW-Wikipedia-1.9
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/E/ES/ESUMMERS/}

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/p5-Text-Autoformat \
			::www/p5-libwww
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
