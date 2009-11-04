# $OpenBSD: Makefile,v 1.2 2009/11/04 08:02:11 sthen Exp $

COMMENT =		simple distributed software configuration management 

VERSION =		20091103194336
DISTNAME =		fossil-src-${VERSION}
PKGNAME =		fossil-${VERSION}
CATEGORIES =		devel www

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		${HOMEPAGE}download/ \
			http://bsdgroup.org/fossil/

# GPLv2 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L} == "static"
MAKE_FLAGS =		LDFLAGS="-static"
.endif

WANTLIB =		c z

MODULES =		lang/tcl
RUN_DEPENDS =		:gnupg-*:security/gnupg

REGRESS_DEPENDS =	${MODTCL_RUN_DEPENDS}

MAKE_FLAGS +=		BCC="${CC}" TCC="${CC} -Wall"

do-regress:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
