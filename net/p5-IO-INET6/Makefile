# $OpenBSD: Makefile,v 1.1.1.1 2004/05/31 02:08:29 djm Exp $

COMMENT=	"object interface for AF_INET and AF_INET6 domain sockets"

DISTNAME=	INET6-2.01
PKGNAME=	p5-IO-${DISTNAME}
CATEGORIES=	net devel perl5

HOMEPAGE=	http://search.cpan.org/~mondejar/INET6/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# "the same terms as Perl itself"
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

RUN_DEPENDS=		:p5-Socket6-*:net/p5-Socket6
BUILD_DEPENDS+=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
