# $OpenBSD: Makefile,v 1.22 2008/09/16 19:41:35 jasper Exp $

COMMENT=	convert ASP code to PHP code

DISTNAME=	asp2php-0.77.3
CATEGORIES=	devel www

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://downloads.mikekohn.net/asp2php/

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=	Yes
LIB_DEPENDS+=	gtk.>=1.2,gdk.>=1.2::x11/gtk+
ALL_TARGET=	all gui
WANTLIB+=	X11 Xext Xi glib gmodule iconv intl m
.endif

WRKDIST=	${WRKDIR}/asp2php

NO_REGRESS=	Yes

.include <bsd.port.mk>
