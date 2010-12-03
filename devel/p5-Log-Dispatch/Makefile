# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.21
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate

REGRESS_DEPENDS= devel/p5-File-Find-Rule

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
