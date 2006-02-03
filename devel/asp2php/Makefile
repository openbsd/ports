# $OpenBSD: Makefile,v 1.19 2006/02/03 22:33:00 steven Exp $

COMMENT=	"convert ASP code to PHP code"

DISTNAME=	asp2php-0.76.13
CATEGORIES=	devel www

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://www.mikekohn.com/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=	Yes
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
ALL_TARGET=	all gui
WANTLIB+=	X11 Xext Xi glib gmodule iconv intl m
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
