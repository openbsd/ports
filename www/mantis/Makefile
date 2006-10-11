# $OpenBSD: Makefile,v 1.1.1.1 2006/10/11 18:28:27 mbalmer Exp $

COMMENT=	"web based bug tracking"

DISTNAME=	mantis_1.0.5
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	www
HOMEPAGE=	http://www.mantisbugtracker.com/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mantisbt/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	/var/www/mantis
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	php5-mysql-.>=5.0.0::www/php5/extensions,-mysql \
		mini_sendmail-chroot-.>=1.3.6::mail/mini_sendmail,-chroot

do-install:
	@-test ! -d ${PREFIX}/mantis && mkdir ${PREFIX}/mantis
	@cd ${WRKDIST}; tar cf - . | (cd ${PREFIX}/mantis; tar xf -)
	@echo "<?php \$$g_placeholder = 'yes'; ?>" > \
		${PREFIX}/mantis/config_inc.php.placeholder

.include <bsd.port.mk>
