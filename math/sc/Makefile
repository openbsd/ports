# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:18 espie Exp $

COMMENT=	"curses spreadsheet-calculator program"

DISTNAME=	sc-6.21
CATEGORIES=	math
NEED_VERSION=	1.515

MASTER_SITES=   ftp://gatekeeper.dec.com/pub/misc/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAN1=		sc.1 psc.1

WRKDIST=	${WRKDIR}
NO_REGRESS=	Yes

.include <bsd.port.mk>
