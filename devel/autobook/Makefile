# $OpenBSD: Makefile,v 1.4 2002/03/21 20:46:24 espie Exp $

COMMENT=	"documentation for autoconf, automake, libtool"

V=1.2
SUBST_VARS=V
DISTNAME=	autobook-${V}
CATEGORIES=	devel
NEED_VERSION=	1.515

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Open Publication License

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://sources.redhat.com/autobook/

EXTRACT_ONLY=	
NO_BUILD=	Yes
NO_REGRESS=	Yes

DOCDIR=${PREFIX}/share/doc
do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	cd ${DOCDIR} && ln -sf ${DISTNAME} autobook

.include <bsd.port.mk>
