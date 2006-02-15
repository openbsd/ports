# $OpenBSD: Makefile,v 1.16 2006/02/15 06:34:04 sturm Exp $

COMMENT=	"processes logfiles and perform certain actions"

DISTNAME=	logsurfer-1.5b
PKGNAME=	${DISTNAME}p0
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

.include <bsd.port.mk>
