# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:25 turan Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $

DISTNAME=	xdelta-1.1.1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.xcf.berkeley.edu/pub/xdelta/

NEED_VERSION=	1.73

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	gdbm.2:${PORTSDIR}/databases/gdbm \
		glib.1.2:${PORTSDIR}/devel/glib

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

.include <bsd.port.mk>
