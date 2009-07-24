# $OpenBSD: Makefile,v 1.18 2009/07/24 21:40:15 jakob Exp $

COMMENT=	processes logfiles and perform certain actions

DISTNAME=	logsurfer-1.5b
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security
EXTRACT_SUFX=	.tar

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.cert.dfn.de/pub/tools/audit/logsurfer/ \
		ftp://ftp.tuwien.ac.at/infosys/security/dfn/tools/audit/logsurfer/

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${LP64_ARCHS}

.include <bsd.port.mk>
