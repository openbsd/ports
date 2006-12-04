# $OpenBSD: Makefile,v 1.4 2006/12/04 01:07:15 msf Exp $

COMMENT=	"dispatches messages to one or more outputs"

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.13
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
