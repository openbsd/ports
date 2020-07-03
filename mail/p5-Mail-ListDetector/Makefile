#   $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:26 sthen Exp $

COMMENT=	Perl extension for detecting mailing list messages

DISTNAME=	Mail-ListDetector-1.04
CATEGORIES=	mail
FIX_EXTRACT_PERMISSIONS=	Yes
REVISION=	0

MAINTAINER=	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

RUN_DEPENDS=	mail/p5-Email-Abstract \
		mail/p5-Email-Valid \
		mail/p5-Mail-Tools \
		www/p5-URI

.include <bsd.port.mk>
