# $OpenBSD: Makefile,v 1.34 2012/04/30 13:12:15 espie Exp $

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-20120317175325
PKGNAME =		fossil-1.22
EPOCH =			0
CATEGORIES =		devel www
REVISION =		0

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
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
.endif

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
