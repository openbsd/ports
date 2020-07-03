# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:11 sthen Exp $

COMMENT =		Tcl extension module for Perl

DISTNAME =		Tcl-1.05
CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_CONFIG}

.include <bsd.port.mk>
