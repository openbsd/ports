# $OpenBSD: Makefile,v 1.7 2002/05/15 17:42:25 espie Exp $

COMMENT=	"modules to implement the irc protocol"

DISTNAME=	Net-IRC-0.73
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.503

HOMEPAGE=	http://theoryx5.uwinnipeg.ca/CPAN/data/Net-IRC/Connection.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE= perl

NO_REGRESS=	Yes

.include <bsd.port.mk>
