# $OpenBSD: Makefile,v 1.5 2006/04/01 18:00:34 bernd Exp $

COMMENT=	"encapsulate SQL queries and rows in simple perl objects"

DISTNAME=	DBIx-SearchBuilder-1.27
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-DBI \
		::devel/p5-Cache-Simple-TimedExpiry \
		::devel/p5-Class-ReturnValue \
		::devel/p5-Want

REGRESS_DEPENDS= ::databases/p5-DBD-SQLite \
		 ::devel/p5-Test-Pod \
		 ::devel/p5-Devel-StackTrace

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
