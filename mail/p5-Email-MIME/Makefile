# $OpenBSD: Makefile,v 1.23 2019/05/09 17:05:42 afresh1 Exp $

COMMENT=	easy MIME message handling

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Email-MIME-1.946
CATEGORIES=	mail
EPOCH=		0

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Module-Runtime \
		mail/p5-Email-Address-XS \
		mail/p5-Email-MIME-ContentType>=1.022 \
		mail/p5-Email-MIME-Encodings>=1.314 \
		mail/p5-Email-MessageID \
		mail/p5-Email-Simple \
		mail/p5-MIME-Types>=1.13

.include <bsd.port.mk>
