# $OpenBSD

COMMENT=	ASP.NET implementations for Mono

V=		2.10.2
DISTNAME=	xsp-${V}
PKGNAME=	mono-xsp-${V}

REVISION=	0

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	www devel

HOMEPAGE=	http://www.mono-project.com/ASP.NET
MASTER_SITES=	http://origin-download.mono-project.com/sources/xsp/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/mono

BUILD_DEPENDS+=	misc/findutils

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes

.include <bsd.port.mk>
