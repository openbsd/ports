# $OpenBSD: Makefile,v 1.7 2008/04/05 16:42:26 sthen Exp $

COMMENT=	imap4 webmail client

DISTNAME=	roundcubemail-0.1.1
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/roundcubemail
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-core-*:www/php5/core

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	@find ${INSTDIR} -name \*.orig -exec rm -f {} \;
	@rm -rf ${INSTDIR}/installer

.include <bsd.port.mk>
