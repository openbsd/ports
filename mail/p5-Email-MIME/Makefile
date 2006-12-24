# $OpenBSD: Makefile,v 1.2 2006/12/24 12:41:02 dassow Exp $

COMMENT=	"handle MIME messages"

MODULES=	cpan
DISTNAME=	Email-MIME-1.82
CATEGORIES=	mail

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-MIME-ContentType \
		::mail/p5-Email-MIME-Encodings \
		::mail/p5-Email-Simple \
		::mail/p5-MIME-Types

.include <bsd.port.mk>
