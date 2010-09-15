# $OpenBSD: Makefile,v 1.7 2010/09/15 13:52:11 sthen Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.21
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Validate

REGRESS_DEPENDS= ::devel/p5-File-Find-Rule

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
