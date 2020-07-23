# $OpenBSD: Makefile,v 1.82 2020/07/23 19:29:59 landry Exp $

COMMENT =		Netscape Portable Runtime

VER=			4.27
DISTNAME=		nspr-${VER}

SO_VERSION=		24.0
.for _lib in nspr4 plc4 plds4
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor

CATEGORIES=		devel

HOMEPAGE=		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSPR

MAINTAINER=		Landry Breuil <landry@openbsd.org>

WANTLIB=		c pthread

# MPL - Mozilla Public License
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

MAKE_ENV=		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=		${MAKE_ENV}

WRKSRC=			${WRKDIST}/nspr
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

do-test:
	${MAKE_PROGRAM} -C ${WRKSRC}/pr/tests
	${MAKE_PROGRAM} -C ${WRKSRC}/lib/tests
	@cd ${WRKSRC}/pr/tests && ulimit -Sn 192 && env TZ=gmt \
		LD_LIBRARY_PATH=${WRKSRC}/dist/lib /bin/ksh runtests.sh ${WRKBUILD}
	LD_LIBRARY_PATH=${WRKSRC}/dist/lib ${WRKSRC}/lib/tests/string
	LD_LIBRARY_PATH=${WRKSRC}/dist/lib ${WRKSRC}/lib/tests/base64t

.include <bsd.port.mk>
