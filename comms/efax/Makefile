# $OpenBSD: Makefile,v 1.17 2002/09/17 23:18:34 pvalchev Exp $

COMMENT=	"small & simple FAX send/receive program"

DISTNAME=       efax-0.9
PKGNAME=        ${DISTNAME}p1
CATEGORIES=	comms

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

MAKE_ENV=	CC="${CC}"
FAKE_FLAGS=	BINDIR=${WRKINST}${PREFIX}/bin MANDIR=${WRKINST}${PREFIX}/man

.include <bsd.port.mk>
