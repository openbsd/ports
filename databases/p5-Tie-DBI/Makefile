# $OpenBSD: Makefile,v 1.2 2002/03/21 14:37:28 kevlo Exp $

COMMENT=	"Tie hashes to DBI relational databases"

VERSION=	0.91
DISTNAME=	Tie-DBI-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
NEED_VERSION=	1.515

HOMEPAGE=	http://stein.cshl.org/~lstein/Tie-DBI/

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Tie

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
