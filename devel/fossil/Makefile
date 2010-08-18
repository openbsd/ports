# $OpenBSD: Makefile,v 1.9 2010/08/18 13:53:05 jasper Exp $

COMMENT =		simple distributed software configuration management 

VERSION =		20100703153359
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
MAKE_FLAGS =		LDFLAGS="-static" TCC="${CC} -Wall"
.else
MAKE_FLAGS =		TCC="${CC} -Wall -DFOSSIL_ENABLE_SSL"
.endif

WANTLIB =		c crypto ssl z

MODULES =		lang/tcl
RUN_DEPENDS =		:gnupg-*:security/gnupg

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

MAKE_FLAGS +=		BCC="${CC}"

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
