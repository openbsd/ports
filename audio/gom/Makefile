# $OpenBSD: Makefile,v 1.10 2000/06/10 17:39:14 espie Exp $

BROKEN=	"check out gomconfig..."
DISTNAME=	gom-0.29.103
CATEGORIES=     audio
NEED_VERSION=	1.300
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
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
# You can disable the X version of gom, and only have a console
# interface by commenting out the following line...
CONFIGURE_ARGS+= --with-x --enable-x-gomii

.include <bsd.port.mk>
