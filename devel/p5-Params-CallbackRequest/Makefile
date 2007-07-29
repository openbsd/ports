# $OpenBSD: Makefile,v 1.3 2007/07/29 22:46:57 simon Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.17
CATEGORIES=	devel

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
