# $OpenBSD: Makefile,v 1.3 2001/04/10 13:35:26 lebel Exp $

COMMENT=		"GNU command line utilities"

DISTNAME=		sh-utils-2.0
CATEGORIES=		misc
NEED_VERSION=		1.364

MAINTAINER=		David Lebel <lebel@openbsd.org>

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
