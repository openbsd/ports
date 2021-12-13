# $OpenBSD: Makefile,v 1.11 2021/12/13 10:53:56 robert Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.8
MASTER_SITES = 	${MASTER_SITE_XORG:=util/}

REVISION =	1

PERMIT_PACKAGE =	Yes

WANTLIB =	c

BUILD_DEPENDS =	devel/tradcpp

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	RAWCPP=${TRUEPREFIX}/bin/tradcpp
CONFIGURE_ARGS = --with-script-preproc-cmd="cc -E"

SUBST_FILES =	${WRKSRC}/imakemdep.h
	
RUN_DEPENDS = 	devel/imake-cf \
		devel/tradcpp

pre-configure:
	${SUBST_CMD} ${SUBST_FILES}

.include <bsd.port.mk>
