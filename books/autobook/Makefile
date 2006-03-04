# $OpenBSD: Makefile,v 1.4 2006/03/04 13:38:00 steven Exp $

COMMENT=	"documentation for autoconf, automake, libtool"

V=		1.5
DISTNAME=	autobook-${V}
CATEGORIES=	books devel

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Open Publication License

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://sourceware.org/autobook/

EXTRACT_ONLY=	
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && tar -s/autobook-${V}/autobook/g -zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
