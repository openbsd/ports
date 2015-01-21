# $OpenBSD: Makefile,v 1.9 2015/01/21 14:43:33 sthen Exp $
COMMENT=	HTML objects for Rose

MODULES=	cpan
DISTNAME=	Rose-HTML-Objects-0.6061
REVISION=	0
CATEGORIES=	www devel databases

RUN_DEPENDS=	mail/p5-Email-Valid \
		www/p5-HTML-Parser \
		graphics/p5-Image-Size \
		www/p5-URI \
		databases/p5-Rose-Object \
		databases/p5-Rose-DateTime \
		devel/p5-Clone \
		www/p5-Rose-URI

TEST_DEPENDS=devel/p5-Test-Memory-Cycle

# Perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
