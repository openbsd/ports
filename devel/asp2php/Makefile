# $OpenBSD: Makefile,v 1.15 2002/06/06 02:24:20 shell Exp $

COMMENT=	"convert ASP code to PHP code"

DISTNAME=	asp2php-0.76.10
CATEGORIES=	devel www
NEED_VERSION=	1.531

MAINTAINER=	Shell Hung <shell@openbsd.org>

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://65.108.58.129/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=	Yes
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
ALL_TARGET=	all gui
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
