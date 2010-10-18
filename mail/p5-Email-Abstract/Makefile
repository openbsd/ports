# $OpenBSD: Makefile,v 1.11 2010/10/18 19:59:16 espie Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME=	Email-Abstract-3.001
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Email-Simple->=1.999:mail/p5-Email-Simple
REGRESS_DEPENDS=:p5-Email-MIME->=1.859:mail/p5-Email-MIME \
		::mail/p5-Mail-Box

.include <bsd.port.mk>
