# $OpenBSD: Makefile,v 1.2 2001/03/29 17:21:22 avsm Exp $

COMMENT=		"convert ASP code to PHP code"

DISTNAME=		asp2php-0.75.12
CATEGORIES=		devel www
NEED_VERSION=		1.364

MAINTAINER=		Shell Hung <i@shellhung.org>

HOMEPAGE=		http://asp2php.naken.cc/
MASTER_SITES=		http://home.i1.net/~naken/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=		gui
FLAVOR?=		

ALL_TARGET?=		all unipiss

.if ${FLAVOR:L:Mgui}
USE_X11=		Yes
LIB_DEPENDS=		gtk.1.2::x11/gtk+
ALL_TARGET+=		gtkasp2php
.endif

.include <bsd.port.mk>
