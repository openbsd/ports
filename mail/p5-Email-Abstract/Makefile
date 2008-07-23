# $OpenBSD: Makefile,v 1.8 2008/07/23 08:10:25 simon Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME=	Email-Abstract-2.134
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Module-Pluggable \
		:p5-Email-Simple->=1.999:mail/p5-Email-Simple
REGRESS_DEPENDS=:p5-Email-MIME->=1.859:mail/p5-Email-MIME \
		::mail/p5-Mail-Box

.include <bsd.port.mk>
