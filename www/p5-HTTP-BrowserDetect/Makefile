# $OpenBSD: Makefile,v 1.1.1.1 2005/01/27 14:00:45 sturm Exp $

COMMENT=	"determine web browser from an HTTP user agent string"

DISTNAME=	HTTP-BrowserDetect-0.98
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
