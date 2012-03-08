# $OpenBSD: Makefile,v 1.1.1.1 2012/03/08 14:57:25 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		Not Quite Perl

V =			2012.02
DISTNAME =		nqp-${V}

PARROT_VERSION =	4.1.0
SUBST_VARS +=		PARROT_VERSION

CATEGORIES =		lang

HOMEPAGE =		https://github.com/perl6/NQP

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += readline stdc++ util

MASTER_SITES =		http://cloud.github.com/downloads/perl6/nqp/

LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--with-parrot="${LOCALBASE}/bin/parrot"

REGRESS_TARGET =	test

.include <bsd.port.mk>
