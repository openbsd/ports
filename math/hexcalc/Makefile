# $OpenBSD: Makefile,v 1.1.1.1 2001/01/12 15:59:05 reinhard Exp $

DISTNAME=	hexcalc
CATEGORIES=	math
EXTRACT_SUFX=	..tar.Z
NEED_VERSION=	1.351

MASTER_SITES=	ftp://aixpdslib.seas.ucla.edu/pub/hexcalc/RISC/3.2/src/ \
		http://toxiclinux.org/binary

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

USE_X11=	Yes

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hexcalc ${PREFIX}/bin/hexcalc
	${INSTALL_MAN} ${WRKSRC}/hexcalc.man ${PREFIX}/man/man1/hexcalc.1

.include <bsd.port.mk>
