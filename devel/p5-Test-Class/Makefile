# $OpenBSD: Makefile,v 1.6 2006/12/05 03:41:43 msf Exp $

COMMENT=	"easily create test classes in an xUnit style"

MODULES=	cpan
DISTNAME=	Test-Class-0.22
CATEGORIES=	devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception

.include <bsd.port.mk>
