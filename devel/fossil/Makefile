# $OpenBSD: Makefile,v 1.20 2011/01/12 10:08:13 jasper Exp $

COMMENT =		simple distributed software configuration management 

VERSION =		20110101030647
DISTNAME =		fossil-src-${VERSION}
PKGNAME =		fossil-${VERSION}
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		${HOMEPAGE}download/ \
			http://bsdgroup.org/fossil/

# BSD 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L} == "static"
MAKE_FLAGS =		LDFLAGS="-static" TCC="${CC} -Wall -DUSE_PREAD"
.else
MAKE_FLAGS =		TCC="${CC} -Wall -DFOSSIL_ENABLE_SSL -DUSE_PREAD"
.endif

WANTLIB =		c crypto ssl z

MODULES =		lang/tcl
RUN_DEPENDS =		security/gnupg

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

MAKE_FLAGS +=		BCC="${CC}"

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
