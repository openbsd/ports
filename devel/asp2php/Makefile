# $OpenBSD: Makefile,v 1.14 2001/12/21 00:04:43 shell Exp $

COMMENT=	"convert ASP code to PHP code"

DISTNAME=	asp2php-0.75.25
CATEGORIES=	devel www
NEED_VERSION=	1.502

MAINTAINER=	Shell Hung <shell@openbsd.org>

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://home.swbell.net/mikekohn/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=	Yes
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
ALL_TARGET=	all gtkasp2php
.endif

WRKDIST=	${WRKDIR}/asp2php
NO_REGRESS=	Yes

.include <bsd.port.mk>
