# $OpenBSD: Makefile,v 1.7 2001/06/23 04:37:24 shell Exp $

COMMENT=	"on-the-fly HTML to WML conversion"

DISTNAME=       html2wml-0.4.5
CATEGORIES=     converters www perl5
NEED_VERSION=   1.417

MASTER_SITES=	http://maddingue.free.fr/techie/download/Html2Wml/
HOMEPAGE=	http://maddingue.free.fr/techie/html2wml.html

MAINTAINER=     Shell Hung <shell@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/LWP/UserAgent.pm::www/p5-libwww \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/XML/Parser.pm::textproc/p5-XML-Parser \
		${PERL_MODULES}/Text/Template.pm::textproc/p5-Text-Template
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
NO_CONFIGURE=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
