# $OpenBSD: Makefile,v 1.9 2001/10/24 12:13:44 espie Exp $

COMMENT=		"convert ASP code to PHP code"

DISTNAME=		asp2php-0.75.22
CATEGORIES=		devel www
NEED_VERSION=		1.474

MAINTAINER=		Shell Hung <shell@openbsd.org>

HOMEPAGE=		http://asp2php.naken.cc/
MASTER_SITES=		http://home.swbell.net/mikekohn/asp2php/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=		no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=		Yes
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
ALL_TARGET=		all gtkasp2php
.endif


WRKDIST=			${WRKDIR}/asp2php

.include <bsd.port.mk>
