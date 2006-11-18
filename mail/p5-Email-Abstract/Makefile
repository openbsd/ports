# $OpenBSD: Makefile,v 1.3 2006/11/18 21:09:46 steven Exp $

COMMENT= 	"unified interface to mail representations"

MODULES=	cpan
DISTNAME=	Email-Abstract-2.131
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Module-Pluggable \
		::mail/p5-Email-Simple
REGRESS_DEPENDS=::mail/p5-Email-MIME \
		::mail/p5-Mail-Box

.include <bsd.port.mk>
