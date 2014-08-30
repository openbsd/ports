# $OpenBSD: Makefile,v 1.11 2014/08/30 21:54:07 jasper Exp $
# Original from: Stephane Peter <megastep@megastep.org>

COMMENT=	script generating a self-extractible .tgz from a directory

DISTNAME=		makeself
PKGNAME=		makeself-1.5.5
REVISION=		0
CATEGORIES=		archivers misc

HOMEPAGE=		http://www.megastep.org/makeself/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_ONLY=
EXTRACT_SUFX=		.gz.sh

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

post-extract:
	@cd ${WRKDIR} && /bin/sh ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} --nox11

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/makeself.sh ${PREFIX}/bin/makeself.sh

.include <bsd.port.mk>
