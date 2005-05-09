# $OpenBSD: Makefile,v 1.2 2005/05/09 12:09:12 djm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Perl defines relating to AF_INET6 sockets"

DISTNAME=	Socket6-0.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel perl5

HOMEPAGE=	http://search.cpan.org/~umemoto/Socket6-0.17/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# 3-term BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Socket6/}

CONFIGURE_STYLE=perl
CONFIGURE_ARGS+=CC="${CC}" CCFLAGS="${CFLAGS}" OPTIMIZE=" "

.include <bsd.port.mk>
