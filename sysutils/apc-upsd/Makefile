# $OpenBSD: Makefile,v 1.22 2013/03/11 11:41:29 espie Exp $

COMMENT=	UPS software for APC UPS models

DISTNAME=	apc-upsd
PKGNAME=	${DISTNAME}-19991128
REVISION=	1
CATEGORIES=	sysutils

MASTER_SITES=	http://www.knienieder.com/software/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/${DISTNAME}/src
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

pre-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/apc_upsd.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/apc-upsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/apc-upsd
	${INSTALL_PROGRAM} ${WRKSRC}/apc-upsd ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/../doc/smart-protocol ${PREFIX}/share/doc/apc-upsd
	${INSTALL_DATA} ${WRKSRC}/apc-upsd.conf ${PREFIX}/lib/apc-upsd

.include <bsd.port.mk>
