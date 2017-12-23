# $OpenBSD: Makefile,v 1.1.1.1 2017/12/23 12:31:27 landry Exp $

COMMENT =		vi-like editor with sam-style structural regex support
CATEGORIES =		editors

GH_ACCOUNT =		martanne
GH_PROJECT =		vis
GH_TAGNAME =		v0.4

# For test framework
TEST_VERSION =		0.2

MAINTAINER =		Klemens Nanni <kl3@posteo.org>, \
			Carolyn Saunders <gigavinyl@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses iconv intl m termkey tre ${MODLUA_WANTLIB}

MASTER_SITES0 =		${HOMEPAGE}-test/archive/v${TEST_VERSION}/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

SUPDISTNAME =		vis-test-${TEST_VERSION}
SUPDISTFILES =		${SUPDISTNAME}.tar.gz:0
DISTFILES +=		${SUPDISTFILES}

MODULES =		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =		devel/libtermkey \
			textproc/tre

RUN_DEPENDS =		devel/lpeg,${MODLUA_FLAVOR}>=0.12

TEST_DEPENDS =		editors/vim

# libtermkey dumps core when TERM is unset
TEST_ENV =		TERM=${TERM}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--mandir=${PREFIX}/man

# for test/core/Makefile
USE_GMAKE =		Yes

post-extract:
	${TAR} -xzf ${FULLDISTDIR}/${SUPDISTNAME}.tar.gz \
	    -C ${WRKSRC} -s /${SUPDISTNAME}/${TEST_TARGET}/

post-install:
	cd ${PREFIX} && \
		mv bin/vis{,e} && \
		mv man/man1/vis{,e}.1

.include <bsd.port.mk>
