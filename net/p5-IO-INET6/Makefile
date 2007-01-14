# $OpenBSD: Makefile,v 1.2 2007/01/14 20:49:05 simon Exp $

COMMENT=	"object interface for AF_INET and AF_INET6 domain sockets"

MODULES=	cpan
DISTNAME=	INET6-2.01
CATEGORIES=	net devel

MAINTAINER=	Damien Miller <djm@openbsd.org>

# "the same terms as Perl itself"
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

RUN_DEPENDS=		:p5-Socket6-*:net/p5-Socket6
BUILD_DEPENDS+=		${RUN_DEPENDS}

.include <bsd.port.mk>
