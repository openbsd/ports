# $OpenBSD: Makefile,v 1.8 2000/04/09 17:37:16 espie Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $

DISTNAME=	xdelta-1.1.1
CATEGORIES=	misc
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.xcf.berkeley.edu/pub/xdelta/


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdbm.2::databases/gdbm \
		glib.1.2::devel/glib

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

.include <bsd.port.mk>
