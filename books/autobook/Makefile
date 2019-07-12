# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:44 sthen Exp $

COMMENT=	documentation for autoconf, automake, libtool

V=		1.5
DISTNAME=	autobook-${V}
EPOCH=		0
CATEGORIES=	books devel

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Open Publication License
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://sourceware.org/autobook/

EXTRACT_ONLY=	
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && tar -s/autobook-${V}/autobook/g -zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
