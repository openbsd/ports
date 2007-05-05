# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:50 simon Exp $

COMMENT=        "validate user input from a constraint object"

MODULES=	cpan
DISTNAME=	Data-FormValidator-4.50
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::graphics/p5-Image-Size \
		::devel/p5-Date-Calc \
		::misc/p5-File-MMagic \
		::mail/p5-MIME-Types \
		::textproc/p5-Regexp-Common
REGRESS_DEPENDS=::www/p5-CGI-Simple

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
