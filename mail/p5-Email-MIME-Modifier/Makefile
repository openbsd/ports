# $OpenBSD: Makefile,v 1.3 2006/12/27 12:56:07 simon Exp $

COMMENT=	"easily modify MIME objects"

MODULES=	cpan
DISTNAME=	Email-MIME-Modifier-1.441
CATEGORIES=	mail

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-MIME \
		::mail/p5-Email-MessageID

.include <bsd.port.mk>
