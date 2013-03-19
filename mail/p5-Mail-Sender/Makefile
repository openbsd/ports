# $OpenBSD: Makefile,v 1.7 2013/03/19 12:15:19 sthen Exp $

COMMENT=	send mail with attachments through SMTP

MODULES=	cpan

DISTNAME=	Mail-Sender-0.8.22
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
