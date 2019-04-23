# $OpenBSD: Makefile,v 1.8 2019/04/23 06:18:29 matthieu Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.8
MASTER_SITES = 	${MASTER_SITE_XORG:=util/}

PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB =	c

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	RAWCPP=/usr/libexec/tradcpp
CONFIGURE_ARGS = --with-script-preproc-cmd="cc -E"

RUN_DEPENDS = 	devel/imake-cf

.include <bsd.port.mk>
