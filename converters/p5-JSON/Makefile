# $OpenBSD: Makefile,v 1.1.1.1 2006/07/13 11:59:28 steven Exp $

COMMENT= 	"parse and convert to JSON (JavaScript Object Notation)"

DISTNAME=	JSON-1.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

HOMEPAGE=	http://search.cpan.org/dist/JSON/

MAINTAINER=	Genadijus Paleckis <rwx@openbsd.lt>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:p5-libwww-*:www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
