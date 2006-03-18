# $OpenBSD: Makefile,v 1.1.1.1 2006/03/18 19:21:57 sturm Exp $

COMMENT=	"abstract baseclass for a standalone mason server"

DISTNAME=	HTTP-Server-Simple-Mason-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Hook-LexWrap \
		::www/p5-HTML-Mason \
		::www/p5-HTTP-Server-Simple

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
