# $OpenBSD: Makefile,v 1.1.1.1 1999/05/08 00:18:22 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/15 19:59:22 nectar Exp $

DISTNAME=	libicq-0.33
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib

SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

.include <bsd.port.mk>


