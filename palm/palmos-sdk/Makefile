# $OpenBSD: Makefile,v 1.5 2002/03/21 21:25:50 espie Exp $

COMMENT=	"PalmOS include files"

VERSION=	3.5.1
DISTNAME=	sdk35
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

DISTSPECIAL=	${DISTNAME}${EXTRACT_SUFX} \
		sdk35-update1${EXTRACT_SUFX}

DISTFILES=	${DISTSPECIAL} palmos-1-2-3.1-sdks-1${EXTRACT_SUFX}

PALMDEV=	${PREFIX}/palm
NO_BUILD=	Yes

DOWNLOAD_URL=	http://www.palmos.com/dev/tech/tools/sdk35.cgi
PALMOS_DEFAULT_SDK= 3.5

pre-fetch:
	@for A in ${DISTSPECIAL}; \
	do \
		if [ ! -f ${DISTDIR}/$$A ]; then \
		    cd ${DISTDIR} && curl -O -e ${DOWNLOAD_URL} \
		    ${DOWNLOAD_URL}/$$A; \
		fi; \
	done

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palmos-sdk
	${INSTALL_DATA} ${FILESDIR}/palmos-sdk-license ${PREFIX}/share/doc/palmos-sdk
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-1
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-2
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-3.1
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-3.5/include
	cd ${WRKDIR}/sdk-1 && pax -rw include ${PALMDEV}/sdk-1
	cd ${WRKDIR}/sdk-2 && pax -rw include ${PALMDEV}/sdk-2
	cd ${WRKDIR}/sdk-3.1 && pax -rw include ${PALMDEV}/sdk-3.1
	cd ${WRKDIR}/Palm\ OS\ 3.5\ Support/Incs && pax -rw . ${PALMDEV}/sdk-3.5/include
	${INSTALL_DATA_DIR} ${PALMDEV}/sdk-3.5/lib
	cd ${WRKDIR}/Palm\ OS\ 3.5\ Support/GCC\ Libraries && pax -rw . ${PALMDEV}/sdk-3.5/lib
	cd ${PALMDEV} && ln -sf sdk-${PALMOS_DEFAULT_SDK} sdk

.include <bsd.port.mk>
