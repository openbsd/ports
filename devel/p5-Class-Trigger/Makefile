# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:34 espie Exp $

COMMENT=	"add / call inheritable triggers"

MODULES=	cpan
DISTNAME=	Class-Trigger-0.10
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-IO-stringy

.include <bsd.port.mk>
