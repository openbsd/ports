# $OpenBSD: Makefile,v 1.4 2001/04/15 21:10:59 lebel Exp $

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

# since we got a conflict with id-utils regarding the name gid, rename that
# binary to ggid.

post-install:
	@[ -x ${PREFIX}/bin/gid ] && mv ${PREFIX}/bin/gid ${PREFIX}/bin/ggid
	@[ -f ${PREFIX}/man/man1/gid.1 ] && mv ${PREFIX}/man/man1/gid.1 \
					       ${PREFIX}/man/man1/ggid.1
	
.include <bsd.port.mk>
