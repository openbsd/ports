# $OpenBSD: Makefile,v 1.4 2001/07/19 18:54:48 lebel Exp $

COMMENT=		"finds and then operates on files"

DISTNAME=		findutils-4.1
CATEGORIES=		misc
NEED_VERSION=		1.410

HOMEPAGE=		http://www.gnu.org/software/findutils/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	findutils

LIB_DEPENDS=		intl.1::devel/gettext

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
