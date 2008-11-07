# $OpenBSD: Makefile,v 1.9 2008/11/07 15:09:37 sthen Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME=	Email-Abstract-2.134
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

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
