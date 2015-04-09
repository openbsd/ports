# $OpenBSD: Makefile,v 1.21 2015/04/09 17:35:55 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		Rakudo Perl 6 compiler

V =			2015.03
DISTNAME =		rakudo-$V

NQP_VERSION =		2015.03

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		rakudo
GH_PROJECT =		rakudo
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION}
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"

.include <bsd.port.mk>
