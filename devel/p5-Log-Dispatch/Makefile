# $OpenBSD: Makefile,v 1.1.1.1 2004/12/08 05:37:01 msf Exp $

COMMENT=	"dispatches messages to one or more outputs"

DISTNAME=	Log-Dispatch-2.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Log/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Validate

CONFIGURE_STYLE= perl modbuild

PKG_ARCH= *

.include <bsd.port.mk>
