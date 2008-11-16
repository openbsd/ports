# $OpenBSD: Makefile,v 1.8 2008/11/16 10:41:37 mbalmer Exp $

COMMENT=	web based bug tracking

DISTNAME=	mantis-1.1.4
CATEGORIES=	www
HOMEPAGE=	http://www.mantisbt.org/

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

RUN_DEPENDS=	::mail/femail,-chroot

do-install:
	@-test ! -d ${PREFIX}/mantis && mkdir ${PREFIX}/mantis
	@cd ${WRKDIST}; tar cf - . | (cd ${PREFIX}/mantis; tar xf -)
	@echo "<?php \$$g_placeholder = 'yes'; ?>" > \
		${PREFIX}/mantis/config_inc.php.placeholder

.include <bsd.port.mk>
