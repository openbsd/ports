# $OpenBSD: Makefile,v 1.9 2019/07/12 21:15:34 sthen Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.8
MASTER_SITES = 	${MASTER_SITE_XORG:=util/}

PERMIT_PACKAGE =	Yes

WANTLIB =	c

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	RAWCPP=/usr/libexec/tradcpp
CONFIGURE_ARGS = --with-script-preproc-cmd="cc -E"

RUN_DEPENDS = 	devel/imake-cf

.include <bsd.port.mk>
