# $OpenBSD: Makefile,v 1.9 2001/10/07 15:34:10 espie Exp $

COMMENT=	"on-the-fly HTML to WML conversion"

DISTNAME=       html2wml-0.4.6
CATEGORIES=     converters www perl5
NEED_VERSION=   1.474

MASTER_SITES=	http://maddingue.free.fr/techie/download/Html2Wml/
HOMEPAGE=	http://maddingue.free.fr/techie/html2wml.html

MAINTAINER=     Shell Hung <shell@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::www/p5-libwww \
		::textproc/p5-XML-Parser \
		::textproc/p5-Text-Template
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
