# $OpenBSD: Makefile,v 1.7 2007/08/01 21:16:10 kurt Exp $

SHARED_ONLY=		Yes

COMMENT=		"libraries to support development of security-enabled apps"

VERSION=		3.11.7
DISTNAME=		nss-${VERSION}
SO_VERSION=		20.0
.for _lib in freebl3 nss3 nssckbi smime3 softokn3 ssl3
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

LIB_DEPENDS=		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr

MAKE_ENV=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			SO_VERSION="${SO_VERSION}" \
			XCFLAGS="${CFLAGS}" \
			NSPR_INCLUDE_DIR=${LOCALBASE}/include/nspr \
			NSPR_LIB_DIR=${LOCALBASE}/lib

USE_GMAKE=		Yes

WRKSRC=			${WRKDIST}/mozilla/security/nss
NSSDIST=		${WRKDIST}/mozilla/dist
NSSOBJ=			${NSSDIST}/OpenBSD`uname -r`_OPT.OBJ

ALL_TARGET=		nss_build_all

# Don't forget to sync these with http://wiki.mozilla.org/NSS:ToolsToShip
MAIN_TOOLS=		certutil modutil pk12util signtool ssltap crlutil \
			cmsutil signver

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nss
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	@cd ${NSSDIST}/public && ${TAR} -chf - nss/ | \
		${TAR} -xf - -C ${PREFIX}/include
	@cd ${NSSOBJ}/lib && ${TAR} -chf - *.so.${SO_VERSION} | \
		${TAR} -xf - -C ${PREFIX}/lib
	@chmod 444 ${PREFIX}/lib/*.so.${SO_VERSION}
	${INSTALL_DATA} ${NSSOBJ}/lib/{libcrmf.a,*.chk} ${PREFIX}/lib/
	@cd ${NSSOBJ}/bin && ${INSTALL_PROGRAM} ${MAIN_TOOLS} ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${FILESDIR}/nss-config ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/nss.pc ${PREFIX}/lib/pkgconfig/
	@perl -pi -e 's|!!PREFIX!!|${TRUEPREFIX}|g; s|!!VERSION!!|${VERSION}|g' \
		${PREFIX}/bin/nss-config ${PREFIX}/lib/pkgconfig/nss.pc

do-regress:
	cd ${WRKSRC}/tests && ${SETENV} PATH="${NSSOBJ}/bin:${PATH}" \
		LD_LIBRARY_PATH="${NSSOBJ}/lib" ./all.sh

.include <bsd.port.mk>
