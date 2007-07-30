# $OpenBSD: Makefile,v 1.29 2007/07/30 15:30:26 steven Exp $

COMMENT=	checkbook balancing tool

DISTNAME=	cbb-0.73
PKGNAME=	${DISTNAME}p4
CATEGORIES=	misc
HOMEPAGE=	http://www.fifi.org/doc/cbb/html/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

RUN_DEPENDS=	:plan-*:misc/plan \
		:tk-8.4.*:x11/tk/8.4

NO_BUILD=       Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
