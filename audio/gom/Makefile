# $OpenBSD: Makefile,v 1.16 2002/12/29 19:29:56 fgsch Exp $

BROKEN=	"check out gomconfig..."
COMMENT=	"generic audio mixer"
DISTNAME=	gom-0.29.103
CATEGORIES=     audio
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mixers/}


MAINTAINER=	Scott Robinson <scott@tranzoa.com>

# License: GPL
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
