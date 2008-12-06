# $OpenBSD: Makefile,v 1.21 2008/12/06 03:47:45 pvalchev Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $

COMMENT=	binary delta generator and prototype RCS replacement

DISTNAME=	xdelta-1.1.4
SHARED_LIBS=	edsio	1.0 \
		xdelta	12.0
CATEGORIES=	misc
MASTER_SITES=	http://xdelta.googlecode.com/files/

HOMEPAGE=	http://xdelta.org/

LIB_DEPENDS=	gdbm.>=2::databases/gdbm \
		glib.>=1.2::devel/glib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
