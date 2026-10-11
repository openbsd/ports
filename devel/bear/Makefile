COMMENT =	clang database generator

V =		4.2.2
DIST_TUPLE +=	github rizsotto Bear ${V} .
DISTNAME =	bear-${V}

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

#  GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =		devel/cargo

WRKDIST =		${WRKDIR}/Bear-${V}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE = cargo

do-install:
	${WRKBUILD}/target/release/generate-completions \
		${WRKBUILD}/target/release/completions
	${SETENV} DESTDIR=${WRKINST} PREFIX=${TRUEPREFIX} \
		SRCDIR=${WRKBUILD}/target/release \
		/bin/sh ${WRKSRC}/scripts/install.sh

.include <crates.inc>

.include <bsd.port.mk>
