# $OpenBSD: Makefile,v 1.17 2010/04/03 09:21:00 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		libraries to support development of security-enabled apps

VERSION=		3.12.6
DISTNAME=		nss-${VERSION}
SO_VERSION=		25.0
.for _lib in freebl3 nss3 nssckbi nssdbm3 nssutil3 smime3 softokn3 ssl3
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
CATEGORIES=		security

HOMEPAGE=		http://www.mozilla.org/projects/security/pki/nss/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += c pthread z

MASTER_SITES=		http://ftp.eu.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_${VERSION:S/./_/g}_RTM/src/ \
			http://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_${VERSION:S/./_/g}_RTM/src/

LIB_DEPENDS=		nspr4.>=20.1,plc4.>=20.1,plds4.>=20.1:nspr->=4.8:devel/nspr \
			sqlite3.>=13.3:sqlite3->=3.6.13:databases/sqlite3

MAKE_ENV=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			NSS_USE_SYSTEM_SQLITE=1 \
			SO_VERSION="${SO_VERSION}" \
			XCFLAGS="-I${LOCALBASE}/include -DRAND_DEV=\\\"/dev/arandom\\\" ${CFLAGS}" \
			NSPR_INCLUDE_DIR="${LOCALBASE}/include/nspr" \
			NSPR_LIB_DIR="${LOCALBASE}/lib"

USE_GMAKE=		Yes

WRKSRC=			${WRKDIST}/mozilla/security/nss
NSSDIST=		${WRKDIST}/mozilla/dist
NSSOBJ=			${NSSDIST}/OpenBSD`uname -r`${OBJ64}_OPT.OBJ

ALL_TARGET=		nss_build_all

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
	${INSTALL_SCRIPT} ${FILESDIR}/nss-config ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/nss.pc ${PREFIX}/lib/pkgconfig/
	@perl -pi -e 's|!!PREFIX!!|${TRUEPREFIX}|g; s|!!VERSION!!|${VERSION}|g' \
		${PREFIX}/bin/nss-config ${PREFIX}/lib/pkgconfig/nss.pc

do-regress:
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} \
		PATH="${NSSOBJ}/bin:${PATH}" \
		LD_LIBRARY_PATH="${NSSOBJ}/lib" /bin/sh ./all.sh

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
. if !empty(LP64_ARCHS:M${_m})
MAKE_ENV+=		USE_64=1
OBJ64=			_64
. endif
.endfor
