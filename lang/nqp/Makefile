# $OpenBSD: Makefile,v 1.10 2013/03/11 11:20:28 espie Exp $

SHARED_ONLY =		Yes

VMEM_WARNING =		Yes

BROKEN-hppa =		error: unsupported architecture hppa
COMMENT =		Not Quite Perl

V =			2012.10
DISTNAME =		nqp-${V}

PARROT_VERSION =	4.9.0
SUBST_VARS +=		PARROT_VERSION

CATEGORIES =		lang

HOMEPAGE =		https://github.com/perl6/NQP

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += readline stdc++ util ffi

MASTER_SITES =		http://cloud.github.com/downloads/perl6/nqp/

LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--with-parrot="${LOCALBASE}/bin/parrot"

MAKE_ENV +=		CC="${CC}"

TEST_TARGET =	test

.include <bsd.port.mk>
