# $OpenBSD: Makefile,v 1.6 2002/05/03 21:00:39 pvalchev Exp $

COMMENT=	"PalmOS include files"

VERSION=	4.0
DISTNAME=	sdk40
PKGNAME=	palmos-sdk-${VERSION}
CATEGORIES=	palm devel
NEED_VERSION=	1.515

HOMEPAGE=	http://www.palmos.com/dev/tech/tools/gcc/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   "no redistribution"
PERMIT_PACKAGE_FTP=     "no redistribution"
PERMIT_DISTFILES_CDROM= "no redistribution"
PERMIT_DISTFILES_FTP=   "no redistribution"

SUBST_VARS=	PKGNAME

MASTER_SITES=	http://www.palmos.com/dev/tech/tools/gcc/dist/

FETCH_DEPENDS=	curl:curl-*:net/curl
BUILD_DEPENDS=	rpm2cpio:rpm2cpio-*:converters/rpm2cpio

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		sdk40upd1${EXTRACT_SUFX}

PALMDEV=	${PREFIX}/palm
NO_BUILD=	Yes
SUBST_VARS=	VERSION

DOWNLOAD_URL=	http://www.palmos.com/cgi-bin/sdk40.cgi

.include <bsd.own.mk>

ACCEPT_PALMOS_SDK_LICENSE?=No
.if ${ACCEPT_PALMOS_SDK_LICENSE:L} == "no"
do-fetch:
	@echo "You must read http://www.palmos.com/dev/tech/tools/sdk35.cgi first."
	@echo "To accept the license, restart the build with"
	@echo "ACCEPT_PALMOS_SDK_LICENSE=Yes"
	@exit 1
.else
post-fetch:
	@for A in ${DISTFILES}; \
	do \
		if [ ! -f ${DISTDIR}/$$A ]; then \
		    cd ${DISTDIR} && curl -O -e ${DOWNLOAD_URL} \
		    ${DOWNLOAD_URL}/$$A; \
		fi; \
	done
.endif

post-extract:
	@(cd ${WRKDIR} && \
	${LOCALBASE}/bin/rpm2cpio ./palmos-sdk-${VERSION}-1.noarch.rpm > sdk-${VERSION}.cpio && \
	/bin/cpio -d -i < sdk-${VERSION}.cpio && \
	ln -s ./opt/palmdev/sdk-4/ ./sdk-${VERSION})

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
