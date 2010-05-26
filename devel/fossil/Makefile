# $OpenBSD: Makefile,v 1.8 2010/05/26 14:32:37 landry Exp $

COMMENT =		simple distributed software configuration management 

VERSION =		20100521162104
DISTNAME =		fossil-src-${VERSION}
PKGNAME =		fossil-${VERSION}
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@bsdgroup.org>

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
MAKE_FLAGS =		LDFLAGS="-static"
.endif

WANTLIB =		c crypto ssl z

MODULES =		lang/tcl
RUN_DEPENDS =		:gnupg-*:security/gnupg

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

MAKE_FLAGS +=		BCC="${CC}" TCC="${CC} -Wall -DFOSSIL_ENABLE_SSL"

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
