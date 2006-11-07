# $OpenBSD: Makefile,v 1.1.1.1 2006/11/07 11:40:50 espie Exp $

COMMENT= 	"unified interface to mail representations"

DISTNAME=	Email-Abstract-2.131
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Email/}

RUN_DEPENDS=	::devel/p5-Class-ISA \
		::devel/p5-Module-Pluggable \
		::mail/p5-Email-Simple
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::mail/p5-Email-MIME \
		::mail/p5-Mail-Box

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
