# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:44 sthen Exp $

COMMENT =		language and library specification for Haskell

V =			2010
DISTNAME =		haskell$V-html
PKGNAME =		haskell-report-$V

CATEGORIES =		books lang

HOMEPAGE =		http://haskell.org/haskellwiki/Language_and_library_specification

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# Copy and distribute for any purpose, but only completely.
# When modified, mark as such and don't call the thing Haskell.
PERMIT_PACKAGE =		Yes

MASTER_SITES =		http://haskell.org/definition/

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

WRKSRC =		${WRKDIR}/haskell$V

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/haskell-report
	cd ${WRKSRC} && umask 022 && \
		pax -rw . ${PREFIX}/share/doc/haskell-report

.include <bsd.port.mk>
