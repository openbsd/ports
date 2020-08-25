# $OpenBSD: Makefile,v 1.128 2020/08/25 13:43:38 landry Exp $

COMMENT=		libraries to support development of security-enabled apps

VERSION=		3.56
# from https://hg.mozilla.org/projects/nss/file/tip/automation/release/nspr-version.txt
NSPR_VERSION=		4.28
DISTNAME=		nss-${VERSION}

SO_VERSION=		58.5
.for _lib in freebl3 nss3 nssckbi nssckbi-testlib nssdbm3 nssutil3 smime3 softokn3 ssl3
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
CATEGORIES=		security

MAINTAINER=		Landry Breuil <landry@openbsd.org>
HOMEPAGE=		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS

# mozilla public license
PERMIT_PACKAGE=	Yes

#for regular releases
MASTER_SITES=		https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/${DISTNAME:U:C/[-.]/_/g}_RTM/src/

LIB_DEPENDS=		databases/sqlite3 \
			devel/nspr>=${NSPR_VERSION}
WANTLIB += c pthread z nspr4 plc4 plds4 sqlite3>=22

MAKE_ENV=		LOCALBASE="${LOCALBASE}" \
			NSS_SEED_ONLY_DEV_URANDOM=1 \
			NSS_ENABLE_ECC=1 \
			NSS_ENABLE_TLS_1_3=1 \
			NSS_DISABLE_GTESTS=1 \
			NSS_USE_SYSTEM_SQLITE=1 \
			SO_VERSION="${SO_VERSION}" \
			XCFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			NSPR_INCLUDE_DIR="${LOCALBASE}/include/nspr" \
			NSPR_LIB_DIR="${LOCALBASE}/lib"

.if !defined(DEBUG)
MAKE_ENV+=		BUILD_OPT=1
.endif

USE_GMAKE=		Yes

WRKSRC=			${WRKDIST}/nss
NSSDIST=		${WRKDIST}/dist
NSSOBJ=			${NSSDIST}/OpenBSD`uname -r`${OBJ64}_OPT.OBJ

ALL_TARGET=		nss_build_all
SUBST_VARS +=		VERSION NSPR_VERSION

# Don't forget to sync these with http://wiki.mozilla.org/NSS:ToolsToShip
MAIN_TOOLS=		certutil modutil pk12util signtool ssltap crlutil \
			cmsutil signver

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nss
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${NSSDIST}/public/nss/*.{h,api} ${PREFIX}/include/nss/
	${INSTALL_DATA} ${NSSOBJ}/lib/*.so.${SO_VERSION} ${PREFIX}/lib/
	${INSTALL_DATA} ${NSSOBJ}/lib/{libcrmf.a,*.chk} ${PREFIX}/lib/
	cd ${NSSOBJ}/bin && ${INSTALL_PROGRAM} ${MAIN_TOOLS} ${PREFIX}/bin/
	${SUBST_CMD} -m 644 -o ${BINOWN} -g ${BINGRP} \
		-c ${WRKSRC}/pkg/pkg-config/nss.pc.in ${PREFIX}/lib/pkgconfig/nss.pc
	${SUBST_CMD} -m ${BINMODE} -o ${BINOWN} -g ${BINGRP} \
		-c ${WRKSRC}/pkg/pkg-config/nss-config.in ${PREFIX}/bin/nss-config

TEST_DEPENDS=	shells/bash

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} \
		PATH="${NSSOBJ}/bin:${PATH}" \
		LD_LIBRARY_PATH="${NSSOBJ}/lib" \
		${LOCALBASE}/bin/bash ./all.sh

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
MAKE_ENV+=		USE_64=1
OBJ64=			_64
.endif

.include <bsd.port.mk>
