# Makefile for:		cgichk
# Version required:	3.0
# Date created:		27 Oct 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:51 espie Exp $

COMMENT=	"scans webservers for vulnerable CGI programs"

PKGNAME=	cgichk-3.6

DISTNAME=	cgichk3.6
EXTRACT_SUFX=	.tgz

CATEGORIES=	security
NEED_VERSION=	1.515

MASTER_SITES=	http://web.singnet.com.sg/~cksss/ \
		http://www.securityfocus.com/data/tools/auditing/network/

HOMEPAGE=	http://web.singnet.com.sg/~cksss/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=        ${WRKDIR}/cgichk3

post-install:
	@strip ${PREFIX}/bin/cgichk

.include <bsd.port.mk>
