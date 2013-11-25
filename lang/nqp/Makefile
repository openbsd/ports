# $OpenBSD: Makefile,v 1.14 2013/11/25 14:16:23 sthen Exp $

SHARED_ONLY =		Yes

BROKEN-hppa =		error: unsupported architecture hppa
BROKEN-alpha =		error: unsupported architecture alpha

COMMENT =		Not Quite Perl

V =			2013.05
DISTNAME =		$V
PKGNAME =		nqp-${V}
DIST_SUBDIR =		nqp

PARROT_VERSION =	5.4.0
SUBST_VARS +=		PARROT_VERSION

CATEGORIES =		lang

HOMEPAGE =		https://github.com/perl6/NQP

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += readline stdc++ util ffi

MASTER_SITES =		https://github.com/perl6/nqp/archive/

LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--with-parrot="${LOCALBASE}/bin/parrot"

MAKE_ENV +=		CC="${CC}"

WRKDIST =		${WRKDIR}/nqp-$V

TEST_TARGET =	test

.include <bsd.port.mk>
