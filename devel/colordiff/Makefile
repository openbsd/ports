# $OpenBSD: Makefile,v 1.8 2020/06/26 10:11:41 feinerer Exp $

COMMENT =		colorized diff tool
DISTNAME =		colordiff-1.0.19
CATEGORIES =		devel
HOMEPAGE =		https://www.colordiff.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		perl

# No need, docs come pre-rendered.
NO_BUILD =		Yes
NO_TEST =		Yes

MAKE_ENV +=		INSTALL_DIR=${PREFIX}/bin \
			MAN_DIR=${PREFIX}/man/man1 \
			ETC_DIR=${EXAMPLES_DIR}

EXAMPLES_DIR =		${PREFIX}/share/examples/colordiff
post-install:
	${INSTALL_DATA} ${WRKBUILD}/colordiffrc-* ${EXAMPLES_DIR}

.include <bsd.port.mk>
