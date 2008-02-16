# $OpenBSD: Makefile,v 1.5 2008/02/16 00:11:50 jasper Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-1.93
CATEGORIES=		www

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/p5-Text-Autoformat \
			::www/p5-libwww
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
