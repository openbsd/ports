# $OpenBSD: Makefile,v 1.6 2002/01/22 05:55:56 kevlo Exp $

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

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Net 

CONFIGURE_STYLE= perl

NO_REGRESS=	Yes

.include <bsd.port.mk>
