# $OpenBSD: Makefile,v 1.14 2003/04/26 15:00:32 sturm Exp $

COMMENT=	"UPS software for APC UPS models"

DISTNAME=	apc-upsd
PKGNAME=	${DISTNAME}-19991128
CATEGORIES=	sysutils

MASTER_SITES=	http://www.knienieder.com/software/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/${DISTNAME}/src
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

post-patch:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/apc_upsd.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/apc-upsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/apc-upsd
	${INSTALL_PROGRAM} ${WRKSRC}/apc-upsd ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/../doc/smart-protocol ${PREFIX}/share/doc/apc-upsd
	${INSTALL_DATA} ${WRKSRC}/apc-upsd.conf ${PREFIX}/lib/apc-upsd

.include <bsd.port.mk>
