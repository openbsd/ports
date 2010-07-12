# $OpenBSD: Makefile,v 1.23 2010/07/12 22:07:38 sthen Exp $

COMMENT=		fully compliant DynDNS.org client

MV=			0
V=			207
PKGNAME=		ipcheck-${MV}.${V}
REVISION=		2
DISTNAME=		ipcheck.${V}
CATEGORIES=		net

HOMEPAGE=		http://ipcheck.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/
EXTRACT_SUFX=
EXTRACT_ONLY=

MODULES=		lang/python

NO_REGRESS=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}

do-patch:
	@sed -e "s!/usr/bin/python!${LOCALBASE}/bin/python${MODPY_VERSION}!" \
	     -e "s!ppp0!tun0!" \
	      ${FULLDISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/ipcheck.py

.include <bsd.port.mk>
