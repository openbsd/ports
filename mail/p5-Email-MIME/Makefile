# $OpenBSD: Makefile,v 1.4 2007/07/05 15:42:56 steven Exp $

COMMENT=	"handle MIME messages"

MODULES=	cpan
DISTNAME=	Email-MIME-1.859
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Email-MIME-ContentType->=1.014:mail/p5-Email-MIME-ContentType \
		::mail/p5-Email-MIME-Encodings \
		:p5-Email-Simple->=1.999:mail/p5-Email-Simple \
		::mail/p5-MIME-Types

.include <bsd.port.mk>
