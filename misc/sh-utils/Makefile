# $OpenBSD: Makefile,v 1.2 2001/03/16 00:43:38 brad Exp $

DISTNAME=		sh-utils-2.0
CATEGORIES=		misc
NEED_VERSION=		1.340

MAINTAINER=		David Lebel <lebel@lebel.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	sh-utils

LIB_DEPENDS=		intl.1::devel/gettext

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
