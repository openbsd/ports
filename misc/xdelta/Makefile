# $OpenBSD: Makefile,v 1.16 2005/09/04 23:31:36 espie Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $

COMMENT=	"binary delta generator and prototype RCS replacement"

DISTNAME=	xdelta-1.1.1
PKGNAME=	${DISTNAME}p0
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
