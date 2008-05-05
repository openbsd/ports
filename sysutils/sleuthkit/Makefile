# $OpenBSD: Makefile,v 1.9 2008/05/05 19:50:17 rui Exp $

COMMENT=		forensic toolkit based on TCT

DISTNAME=		sleuthkit-2.52
CATEGORIES=		sysutils security

SHARED_LIBS=		tsk 1.2

HOMEPAGE=		http://www.sleuthkit.org/

MAINTAINER=		Rui Reis <rui@openbsd.org>

# CPLv1 & IBM & GPLv2
PERMIT_PACKAGE_CDROM=	commercial contributor must indemnify all others
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial contributor must indemnify all others
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sleuthkit/}

WANTLIB=		c m stdc++

CONFIGURE_STYLE=        simple

RUN_DEPENDS=		:p5-DateManip-*:converters/p5-DateManip

NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e "s:%%PREFIX%%:${PREFIX}:" ${WRKSRC}/man/sorter.1

.include <bsd.port.mk>
