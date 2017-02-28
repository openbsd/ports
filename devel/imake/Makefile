# $OpenBSD: Makefile,v 1.7 2017/02/28 21:46:51 naddy Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.7
REVISION =	0
MASTER_SITES = 	${MASTER_SITE_XORG:=util/}

PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB =	c

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	RAWCPP=/usr/libexec/tradcpp
CONFIGURE_ARGS = --with-script-preproc-cmd="cc -E"

RUN_DEPENDS = 	devel/imake-cf

.include <bsd.port.mk>
