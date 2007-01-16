# $OpenBSD: Makefile,v 1.2 2007/01/16 14:52:52 jasper Exp $

COMMENT=		"automated interface to the Wikipedia encyclopedia"

DISTNAME=		WWW-Wikipedia-1.92
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
