# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"unified interface to mail representations"

MODULES=	cpan
DISTNAME=	Email-Abstract-2.131
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Module-Pluggable \
		::mail/p5-Email-Simple
REGRESS_DEPENDS=::mail/p5-Email-MIME \
		::mail/p5-Mail-Box

.include <bsd.port.mk>
