# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 22:13:22 espie Exp $

COMMENT=	"object-oriented database mapper"

MODULES=	cpan

DISTNAME=	Rose-DB-Object-0.758
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Rose-DB \
		::devel/p5-Clone

.include <bsd.port.mk>
