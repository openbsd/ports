# $OpenBSD: Makefile,v 1.8 2000/04/09 17:36:18 espie Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/15 19:59:22 nectar Exp $

DISTNAME=	libicq-0.33
CATEGORIES=	devel
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.korsoft.com/pub/gicq/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	glib.1.2::devel/glib

SEPARATE_BUILD= concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

.include <bsd.port.mk>


