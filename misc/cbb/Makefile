# $OpenBSD: Makefile,v 1.8 2000/03/24 23:28:22 espie Exp $
#

DISTNAME=	cbb-0.73
CATEGORIES=	misc tk80
NEED_VERSION=	 1.230

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.me.umn.edu/pub/finance/ \
		ftp://ftp.fifi.org/pub/cbb/

LIB_DEPENDS=    tk80.1.::x11/tk80

RUN_DEPENDS=	wish8.0::x11/tk80 \
		plan:misc/plan

NO_BUILD=       Yes

pre-configure:
	mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
