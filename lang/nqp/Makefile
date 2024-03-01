COMMENT =		Not Quite Perl

V =			2024.01
DISTNAME =		nqp-$V

MOAR_VERSION =		$V

CATEGORIES =		lang

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic 2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =		c moar

GH_ACCOUNT =		Raku
GH_PROJECT =		nqp
GH_TAGNAME =		$V

# Take the missing WRKDIST/3rdparty/nqp-configure from rakudo.
SITES.rakudo =		https://rakudo.org/dl/rakudo/
RAKUDO_VERSION =	$V
DISTFILES =		nqp-$V.tar.gz
DISTFILES.rakudo = 	rakudo-${RAKUDO_VERSION}.tar.gz
EXTRACT_ONLY =		${DISTFILES}

BUILD_DEPENDS =		math/libtommath
LIB_DEPENDS =		lang/moarvm>=${MOAR_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--prefix="${LOCALBASE}" \
			--backends=moar
USE_GMAKE =		Yes
MAKE_FLAGS +=		VERBOSE_BUILD=Yes

post-extract:
	cd ${WRKDIST}/3rdparty && \
		pax -rzf ${FULLDISTDIR}/rakudo-${RAKUDO_VERSION}.tar.gz \
		-s':.*/3rdparty/::' '*/3rdparty/nqp-configure'

.include <bsd.port.mk>
