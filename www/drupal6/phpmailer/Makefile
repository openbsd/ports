# $OpenBSD: Makefile,v 1.5 2016/06/30 11:48:26 espie Exp $

COMMENT =	send mail by smtp/smtp-auth from drupal

DISTNAME = 	phpmailer-6.x-2.2
REVISION =	2
PKGNAME =	drupal6-phpmailer-2.2

# drupal module is GPL, third-party phpMailer code is LGPL
MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=phpmailer/}
PHPMAILER =	phpMailer_v2.3
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${PHPMAILER}${EXTRACT_SUFX}:0

pre-patch:
	cd ${WRKDIR}/${PHPMAILER}; \
	    mv class.phpmailer.php class.smtp.php ${WRKSRC}/phpmailer/

.include <bsd.port.mk>
