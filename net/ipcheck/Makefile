# $OpenBSD: Makefile,v 1.2 2001/06/13 15:35:15 lebel Exp $

COMMENT=		"fully compliant DynDNS.org client"

MV=			0
V=			116
PKGNAME=		ipcheck-${MV}.${V}
DISTNAME=		ipcheck.v${V}
CATEGORIES=		net
NEED_VERSION=		1.402
EXTRACT_SUFX=
EXTRACT_ONLY=

HOMEPAGE=		http://ipcheck.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ipcheck.sourceforge.net/releases/

RUN_DEPENDS=		python::lang/python

NO_BUILD=		Yes
WRKDIST=		${WRKDIR}

do-patch:
	@sed -e "s!/usr/bin/python!${LOCALBASE}/bin/python!" \
	     -e "s!ppp0!tun0!" \
	      ${DISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/ipcheck.py

.include <bsd.port.mk>
