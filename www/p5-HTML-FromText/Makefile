# $OpenBSD: Makefile,v 1.8 2004/04/24 08:20:44 peter Exp $

COMMENT=	"convert text to HTML with controlling options"

VERSION=	2.05
DISTNAME=	HTML-FromText-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

RUN_DEPENDS=	::textproc/p5-Email-Find ::devel/p5-Exporter-Lite
REGRESS_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
