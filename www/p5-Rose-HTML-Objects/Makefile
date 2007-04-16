# $OpenBSD: Makefile,v 1.1.1.1 2007/04/16 20:46:42 espie Exp $
COMMENT=	'HTML objects for Rose'

MODULES=	cpan
DISTNAME=	Rose-HTML-Objects-0.547
CATEGORIES=	www devel databases

RUN_DEPENDS=	::mail/p5-Email-Valid \
		::www/p5-HTML-Parser \
		::graphics/p5-Image-Size \
		::www/p5-URI \
		::databases/p5-Rose-Object \
		::databases/p5-Rose-DateTime \
		::devel/p5-Clone

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
