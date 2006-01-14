# $OpenBSD: Makefile,v 1.18 2006/01/14 20:05:49 steven Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $

COMMENT=	"binary delta generator and prototype RCS replacement"

DISTNAME=	xdelta-1.1.1
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	edsio	0.0 \
		xdelta	11.1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.xcf.berkeley.edu/pub/xdelta/

HOMEPAGE=	http://www.xcf.berkeley.edu/~jmacd/xdelta.html

LIB_DEPENDS=	gdbm.2::databases/gdbm \
		glib.1.2::devel/glib

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
