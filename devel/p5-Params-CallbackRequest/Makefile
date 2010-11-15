# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:05 espie Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.19
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
