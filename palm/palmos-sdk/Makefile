# $OpenBSD: Makefile,v 1.8 2002/09/18 11:55:40 naddy Exp $

COMMENT=	"PalmOS include files"

VERSION=	4.0
DISTNAME=	sdk40
PKGNAME=	palmos-sdk-${VERSION}
CATEGORIES=	palm devel

HOMEPAGE=	http://www.palmos.com/dev/tools/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   "no redistribution"
PERMIT_PACKAGE_FTP=     "no redistribution"
PERMIT_DISTFILES_CDROM= "no redistribution"
PERMIT_DISTFILES_FTP=   "no redistribution"

MASTER_SITES=	http://www.palmos.com/cgi-bin/sdk40.cgi/
FETCH_CMD=	${LOCALBASE}/bin/curl -O -b sdk40_license=I-agree
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		sdk40upd1${EXTRACT_SUFX}

FETCH_DEPENDS=	:curl-*:net/curl
BUILD_DEPENDS=	:rpm2cpio-*|rpm-*:converters/rpm2cpio

PALMDEV=	${PREFIX}/palm
NO_BUILD=	Yes
SUBST_VARS=	VERSION

.include <bsd.own.mk>

ACCEPT_PALMOS_SDK_LICENSE?=No
.if ${ACCEPT_PALMOS_SDK_LICENSE:L} == "no"
do-fetch:
	@echo "You must read http://www.palmos.com/dev/tech/tools/sdk35.cgi first."
	@echo "To accept the license, restart the build with"
	@echo "ACCEPT_PALMOS_SDK_LICENSE=Yes"
	@exit 1
.endif

post-extract:
	@cd ${WRKDIR} && \
	${LOCALBASE}/bin/rpm2cpio ./palmos-sdk-${VERSION}-1.noarch.rpm | cpio -i -d && \
	ln -s ./opt/palmdev/sdk-4/ ./sdk-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palmos-sdk
	${INSTALL_DATA} ${FILESDIR}/palmos-sdk-license ${PREFIX}/share/doc/palmos-sdk
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-${VERSION}
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-${VERSION}/include
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-${VERSION}/lib
	@cd ${WRKDIR}/sdk-${VERSION} && pax -rw include ${PALMDEV}/sdk-${VERSION}
	@cd ${WRKDIR}/sdk-${VERSION} && pax -rw . ${PALMDEV}/sdk-${VERSION}/lib
	@cd ${PALMDEV} && ln -sf sdk-${VERSION} sdk

.include <bsd.port.mk>
