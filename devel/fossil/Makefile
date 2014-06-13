# $OpenBSD: Makefile,v 1.44 2014/06/13 02:30:31 jturner Exp $

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-20140612172556
PKGNAME =		fossil-1.29
EPOCH =			0
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		http://fossil-scm.org/download/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS=		static
FLAVOR?=

WANTLIB =		c crypto ssl sqlite3>=27.0 z

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-internal-sqlite --disable-lineedit
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
PREFIX =		${VARBASE}/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER

TEST_DEPENDS =		${MODTCL_RUN_DEPENDS}

post-extract:
	@rm -f ${WRKSRC}/src/sqlite3.h

do-test:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
