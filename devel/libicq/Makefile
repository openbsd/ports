# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:14 turan Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/15 19:59:22 nectar Exp $

DISTNAME=	libicq-0.33
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.korsoft.com/pub/gicq/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib

SEPARATE_BUILD= concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

.include <bsd.port.mk>


