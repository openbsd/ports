# $OpenBSD: Makefile,v 1.4 2010/01/10 13:45:04 espie Exp $
COMMENT=	HTML objects for Rose

MODULES=	cpan
DISTNAME=	Rose-HTML-Objects-0.6061
CATEGORIES=	www devel databases

RUN_DEPENDS=	::mail/p5-Email-Valid \
		::www/p5-HTML-Parser \
		::graphics/p5-Image-Size \
		::www/p5-URI \
		::databases/p5-Rose-Object \
		::databases/p5-Rose-DateTime \
		::devel/p5-Clone \
		::www/p5-Rose-URI

REGRESS_DEPENDS=::devel/p5-Test-Memory-Cycle

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
