# $OpenBSD: Makefile,v 1.31 2011/12/16 11:32:22 sthen Exp $

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-20111213135356
PKGNAME =		fossil-1.21
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

.if ${FLAVOR} == "static"
MAKE_FLAGS =		LDFLAGS="-static" TCC="${CC} -Wall -DUSE_PREAD"
.else
MAKE_FLAGS =		TCC="${CC} -Wall -DFOSSIL_ENABLE_SSL -DUSE_PREAD"
.endif

WANTLIB =		c crypto ssl z

MODULES =		lang/tcl

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS} \
			databases/sqlite3

MAKE_FILE =		Makefile.classic
MAKE_FLAGS +=		BCC="${CC}"

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
