# $OpenBSD: Makefile,v 1.8 2012/11/05 17:57:51 pascal Exp $

SHARED_ONLY =		Yes

VMEM_WARNING =		Yes

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += readline stdc++ util ffi

MASTER_SITES =		http://cloud.github.com/downloads/perl6/nqp/

LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--with-parrot="${LOCALBASE}/bin/parrot"

MAKE_ENV +=		CC="${CC}"

REGRESS_TARGET =	test

.include <bsd.port.mk>
