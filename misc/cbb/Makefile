# $OpenBSD: Makefile,v 1.5 2000/02/16 10:52:12 espie Exp $
#

DISTNAME=	cbb-0.73
CATEGORIES=	misc tk80

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.me.umn.edu/pub/finance/ \
		ftp://ftp.fifi.org/pub/cbb/

LIB_DEPENDS=    tk80\\.1\\.:${PORTSDIR}/x11/tk80

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80 \
		plan:${PORTSDIR}/misc/plan

NO_BUILD=       yes

pre-configure:
	mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
