# $OpenBSD: Makefile,v 1.15 2004/02/02 17:35:01 sturm Exp $

COMMENT=		"fully compliant DynDNS.org client"

MV=			0
V=			207
PKGNAME=		ipcheck-${MV}.${V}
DISTNAME=		ipcheck.${V}
CATEGORIES=		net
EXTRACT_SUFX=
EXTRACT_ONLY=

HOMEPAGE=		http://ipcheck.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ipcheck.sourceforge.net/releases/

PYTHON_VER=		2.2
RUN_DEPENDS+=   	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  	${RUN_DEPENDS}

NO_REGRESS=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}

do-patch:
	@sed -e "s!/usr/bin/python!${LOCALBASE}/bin/python${PYTHON_VER}!" \
	     -e "s!ppp0!tun0!" \
	      ${FULLDISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/ipcheck.py

.include <bsd.port.mk>
