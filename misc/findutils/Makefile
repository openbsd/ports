# $OpenBSD: Makefile,v 1.1.1.1 2001/03/14 21:52:15 wilfried Exp $

DISTNAME=		findutils-4.1
CATEGORIES=		misc
NEED_VERSION=		1.340

MAINTAINER=		David Lebel <lebel@lebel.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	findutils

LIB_DEPENDS=		intl.1::devel/gettext

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-prefix=g

.include <bsd.port.mk>
