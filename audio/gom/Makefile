# $OpenBSD: Makefile,v 1.9 2000/04/02 17:30:04 espie Exp $

BROKEN=	"check out gomconfig..."
DISTNAME=	gom-0.29.103
CATEGORIES=     audio
NEED_VERSION=	1.230
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/mixers


MAINTAINER=	scott@tranzoa.com

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview::x11/xview/lib \
		olgx::x11/xview/lib

SEPARATE_BUILD=	concurrent
USE_AUTOCONF=	Yes
FAKE=		Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
# You can disable the X version of gom, and only have a console
# interface by commenting out the following line...
CONFIGURE_ARGS+= --with-x --enable-x-gomii

.include <bsd.port.mk>
