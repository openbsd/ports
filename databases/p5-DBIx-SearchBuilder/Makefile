# $OpenBSD: Makefile,v 1.9 2006/12/05 06:34:07 msf Exp $

COMMENT=	"encapsulate SQL queries and rows in simple perl objects"

MODULES=	cpan

DISTNAME=	DBIx-SearchBuilder-1.45
CATEGORIES=	databases

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-DBD-SQLite \
		::databases/p5-DBIx-DBSchema \
		::devel/p5-Cache-Simple-TimedExpiry \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-ReturnValue \
		::devel/p5-Clone \
		::devel/p5-capitalization \
		::devel/p5-Want

REGRESS_DEPENDS= ::devel/p5-Test-Pod \
		 ::devel/p5-Devel-StackTrace

.include <bsd.port.mk>
