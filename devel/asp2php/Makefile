# $OpenBSD: Makefile,v 1.5 2001/06/08 17:02:12 shell Exp $

COMMENT=		"convert ASP code to PHP code"

DISTNAME=		asp2php-0.75.14
CATEGORIES=		devel www
NEED_VERSION=		1.399

MAINTAINER=		Shell Hung <shell@openbsd.org>

HOMEPAGE=		http://asp2php.naken.cc/
MASTER_SITES=		http://home.i1.net/~naken/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=		no_x11
FLAVOR?=		

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=		all unipiss
.else
USE_X11=		Yes
LIB_DEPENDS=		gtk.1.2::x11/gtk+
ALL_TARGET=		all unipiss gtkasp2php
.endif

.include <bsd.port.mk>
