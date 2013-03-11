# $OpenBSD: Makefile,v 1.17 2013/03/11 11:20:28 espie Exp $

# Memory hog, stuck for days on the same file during build.
NOT_FOR_ARCHS =		sh
BROKEN-sparc64 =	error:imcc:syntax error, unexpected IF
BROKEN-powerpc =	exists_keyed_str() not implemented in class 'NQPMu'

SHARED_ONLY =		Yes

COMMENT =		Rakudo Perl 6 compiler

PORTNAME =		rakudo
VERSION =		2012.10
DISTNAME =		${PORTNAME}-star-${VERSION}
PKGNAME =		${PORTNAME}-${VERSION}

PARROT_VERSION =	4.9.0
SUBST_VARS +=		PARROT_VERSION

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c gmp icudata icuuc m ncurses parrot pthread
WANTLIB += 		readline stdc++ util ffi

VMEM_WARNING =		Yes

MASTER_SITES =		http://cloud.github.com/downloads/rakudo/star/

BUILD_DEPENDS =		lang/nqp
LIB_DEPENDS =		lang/parrot>=${PARROT_VERSION} \
			textproc/icu4c

FAKE_FLAGS =		PERL6LIB="${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/languages/nqp/lib:${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/languages/perl6/lib"
FAKE_FLAGS +=		LD_LIBRARY_PATH="${WRKINST}${PREFIX}/lib/parrot/${PARROT_VERSION}/dynext"

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}" \
			--with-parrot="${LOCALBASE}/bin/parrot" \
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
		${WRKSRC}/rakudo-${VERSION}/Makefile

.include <bsd.port.mk>
