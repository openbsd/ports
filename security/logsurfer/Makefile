# $OpenBSD: Makefile,v 1.15 2004/12/27 13:28:34 alek Exp $

COMMENT=	"processes logfiles and perform certain actions"

DISTNAME=	logsurfer-1.5b
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
