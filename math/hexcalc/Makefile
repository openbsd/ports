# $OpenBSD: Makefile,v 1.4 2001/05/09 23:26:29 pvalchev Exp $

COMMENT=	"multi-radix calculator for x11"

DATE=		19951219
DISTNAME=	hexcalc
PKGNAME=	${DISTNAME}-${DATE}
CATEGORIES=	math
EXTRACT_SUFX=	..tar.Z
NEED_VERSION=	1.363

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://aixpdslib.seas.ucla.edu/pub/hexcalc/RISC/3.2/src/

USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hexcalc ${PREFIX}/bin/hexcalc
	${INSTALL_MAN} ${WRKSRC}/hexcalc.man ${PREFIX}/man/man1/hexcalc.1

.include <bsd.port.mk>
