# $OpenBSD: Makefile,v 1.3 2017/09/23 10:51:07 sthen Exp $

COMMENT =		Tcl extension module for Perl

DISTNAME =		Tcl-1.02
CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_CONFIG}

.include <bsd.port.mk>
