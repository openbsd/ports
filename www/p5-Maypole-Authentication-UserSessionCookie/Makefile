# $OpenBSD: Makefile,v 1.1.1.1 2004/05/26 13:58:44 sturm Exp $

COMMENT=	"track sessions and, optionally, users"

DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Maypole which is same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/SIMON/} 

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-Maypole

PKG_ARCH=	*

.include <bsd.port.mk>
