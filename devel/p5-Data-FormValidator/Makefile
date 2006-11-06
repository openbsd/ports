# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 11:53:51 espie Exp $

COMMENT=        "validate user input from a constraint object"

DISTNAME=	Data-FormValidator-4.40
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5 www

MAINTAINER=	Simon Dassow <janus@errornet.de>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::graphics/p5-Image-Size \
		::devel/p5-Date-Calc \
		::misc/p5-File-MMagic \
		::mail/p5-MIME-Types \
		::textproc/p5-Regexp-Common
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::www/p5-CGI-Simple

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
