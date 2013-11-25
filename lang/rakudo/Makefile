# $OpenBSD: Makefile,v 1.19 2013/11/25 14:16:23 sthen Exp $

# Memory hog, stuck for days on the same file during build.
NOT_FOR_ARCHS =		sh
BROKEN-sparc64 =	error:imcc:syntax error, unexpected IF

SHARED_ONLY =		Yes

COMMENT =		Rakudo Perl 6 compiler

PORTNAME =		rakudo
V =			2013.05
DISTNAME =		rakudo-star-$V
PKGNAME =		rakudo-$V

PARROT_VERSION =	5.4.0
NQP_VERSION =		2013.05
SUBST_VARS +=		PARROT_VERSION

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += 		readline stdc++ util ffi

MASTER_SITES =		${HOMEPAGE}/downloads/star/

BUILD_DEPENDS =		lang/nqp>=${NQP_VERSION}
LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION} \
			textproc/icu4c

FAKE_FLAGS =		PERL6LIB="${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/languages/nqp/lib:${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/languages/perl6/lib"
FAKE_FLAGS +=		LD_LIBRARY_PATH="${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/dynext"

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}" \
			--with-nqp="${LOCALBASE}/bin/nqp"

TEST_TARGET =	rakudo-test rakudo-spectest

post-install:
	cd ${WRKSRC}/docs && ${INSTALL_DATA} UsingPerl6-draft.pdf \
		cheatsheet.txt ${PREFIX}/share/doc/rakudo
	cd ${WRKSRC}/docs/announce && ${INSTALL_DATA} * \
		${PREFIX}/share/doc/rakudo/announce

pre-test:
	#no need to check out git repository
	perl -pi -e 's/spectest_checkout spectest_update// if /^testable/' \
		${WRKSRC}/rakudo-$V/Makefile

.include <bsd.port.mk>
