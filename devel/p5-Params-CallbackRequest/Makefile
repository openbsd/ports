# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=	"functional and object-oriented callback architecture"

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.13
CATEGORIES=	devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Validate \
		::devel/p5-Exception-Class

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
