# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:08 sthen Exp $

COMMENT =		Tcl extension module for Perl

DISTNAME =		Tcl-1.05
CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_CONFIG}

.include <bsd.port.mk>
