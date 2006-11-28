# $OpenBSD: Makefile,v 1.2 2006/11/28 11:09:51 espie Exp $

COMMENT=	"Textile for Catalyst"

DISTNAME=	Catalyst-Plugin-Textile-0.01
CATEGORIES=	textproc

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::textproc/p5-Text-Textile \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
