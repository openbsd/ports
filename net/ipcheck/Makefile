# $OpenBSD: Makefile,v 1.11 2002/04/18 16:03:01 lebel Exp $

COMMENT=		"fully compliant DynDNS.org client"

MV=			0
V=			157
PKGNAME=		ipcheck-${MV}.${V}
DISTNAME=		ipcheck.${V}
CATEGORIES=		net
NEED_VERSION=		1.515
EXTRACT_SUFX=
EXTRACT_ONLY=

HOMEPAGE=		http://ipcheck.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ipcheck.sourceforge.net/releases/

PYTHON_VER=		2.1
RUN_DEPENDS+=   	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  	${RUN_DEPENDS}

NO_REGRESS=		Yes
NO_BUILD=		Yes
WRKDIST=		${WRKDIR}

do-patch:
	@sed -e "s!/usr/bin/python!${LOCALBASE}/bin/python${PYTHON_VER}!" \
	     -e "s!ppp0!tun0!" \
	      ${DISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/ipcheck.py

.include <bsd.port.mk>
