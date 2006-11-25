# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:36 espie Exp $

COMMENT=	"dispatches messages to one or more outputs"

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.10
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Validate

REGRESS_DEPENDS= ::devel/p5-File-Find-Rule

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
