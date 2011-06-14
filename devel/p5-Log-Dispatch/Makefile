# $OpenBSD: Makefile,v 1.11 2011/06/14 11:55:07 robert Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.29
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

#CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
