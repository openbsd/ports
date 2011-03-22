# $OpenBSD: Makefile,v 1.4 2011/03/22 08:03:20 jasper Exp $

COMMENT =		Rakudo Perl 6 compiler

PORTNAME =		rakudo
VERSION =		2011.01
DISTNAME =		${PORTNAME}-star-${VERSION}
PKGNAME =		${PORTNAME}-${VERSION}

REVISION =		1

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c icudata icui18n icuuc m ncurses parrot=1.0 pthread
WANTLIB += 		readline stdc++ util


MASTER_SITES =		http://cloud.github.com/downloads/rakudo/star/

LIB_DEPENDS =		lang/parrot=3.0.0 \
			textproc/icu4c

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix=${PREFIX} \
			--parrot-config="${LOCALBASE}/bin/parrot_config"

REGRESS_TARGET =	rakudo-test rakudo-spectest

post-install:
	cd ${WRKSRC}/docs && ${INSTALL_DATA} UsingPerl6-draft.pdf \
		cheatsheet.txt ${PREFIX}/share/doc/rakudo
	cd ${WRKSRC}/docs/announce && ${INSTALL_DATA} * \
		${PREFIX}/share/doc/rakudo/announce

pre-regress:
	#no need to check out git repository
	perl -pi -e 's/spectest_checkout spectest_update// if /^testable/' \
		${WRKSRC}/rakudo/Makefile

.include <bsd.port.mk>
