# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:35 naddy Exp $

COMMENT =		Tcl extension module for Perl

DISTNAME =		Tcl-1.02
CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		perl

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_CONFIG}

.include <bsd.port.mk>
