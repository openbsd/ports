# $OpenBSD: Makefile,v 1.1.1.1 2015/05/08 03:09:11 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		Tcl extension module for Perl

DISTNAME =		Tcl-1.02
CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_CONFIG}

.include <bsd.port.mk>
