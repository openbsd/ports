# $OpenBSD: Makefile,v 1.36 2013/03/04 23:44:39 jturner Exp $

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-20130216000435
PKGNAME =		fossil-1.25
EPOCH =			0
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		${HOMEPAGE}download/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

FLAVORS=		static
FLAVOR?=

WANTLIB =		c crypto ssl sqlite3 z

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-internal-sqlite --disable-lineedit
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
PREFIX =		/var/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

post-extract:
	@rm -f ${WRKSRC}/src/sqlite3.h

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
