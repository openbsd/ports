# $OpenBSD: Makefile,v 1.21 2017/03/07 21:21:34 pascal Exp $

COMMENT =		Not Quite Perl

V =			2017.02
DISTNAME =		nqp-$V

MOAR_VERSION =		2017.02

PATCHORIG =		.orig.port

CATEGORIES =		lang

HOMEPAGE =		https://github.com/perl6/NQP

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		perl6
GH_PROJECT =		nqp
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =		lang/moarvm>=${MOAR_VERSION}
RUN_DEPENDS =		lang/moarvm>=${MOAR_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--prefix="${LOCALBASE}" \
			--backends=moar

WRKDIST =		${WRKDIR}/nqp-$V

.include <bsd.port.mk>
