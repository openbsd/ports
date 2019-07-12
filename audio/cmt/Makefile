# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:32 sthen Exp $

COMMENT=	computer music toolkit
HOMEPAGE=	http://www.ladspa.org/
CATEGORIES=	audio devel

DISTNAME=	cmt_src_1.15
WRKDIST=	${WRKDIR}/cmt
PKGNAME=	cmt-1.15
REVISION =	6
EXTRACT_SUFX=	.tgz
MASTER_SITES=	${HOMEPAGE:=download/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	audio/ladspa

WRKBUILD=	${WRKDIST}/src
MAKE_FILE=	makefile
ALL_TARGET=	targets
MAKE_FLAGS=	CFLAGS='-I${LOCALBASE}/include -fPIC ${CFLAGS}'

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ladspa
	${INSTALL_DATA} ${WRKDIST}/plugins/cmt.so ${PREFIX}/lib/ladspa
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cmt
	${INSTALL_DATA} ${WRKDIST}/doc/*.html ${PREFIX}/share/doc/cmt

# interactive regression test, that requires you to listen to stuff.
# -> mostly useless
NO_TEST=	Yes

.include <bsd.port.mk>
