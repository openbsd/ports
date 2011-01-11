# $OpenBSD: Makefile,v 1.3 2011/01/11 14:04:30 sthen Exp $

COMMENT =	send mail by smtp/smtp-auth from drupal

DISTNAME = 	phpmailer-6.x-2.2
PKGNAME =	drupal6-phpmailer-2.2

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# drupal module is GPL, third-party phpMailer code is LGPL
MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=phpmailer/}
PHPMAILER =	phpMailer_v2.3
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${PHPMAILER}${EXTRACT_SUFX}:0

pre-patch:
	cd ${WRKDIR}/${PHPMAILER}; \
	    mv class.phpmailer.php class.smtp.php ${WRKSRC}/phpmailer/

.include <bsd.port.mk>
