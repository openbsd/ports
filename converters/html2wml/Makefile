# $OpenBSD: Makefile,v 1.12 2002/07/15 04:00:40 shell Exp $

COMMENT=	"on-the-fly HTML to WML conversion"

DISTNAME=       html2wml-0.4.9
CATEGORIES=     converters www perl5

MASTER_SITES=	http://maddingue.free.fr/softwares/download/Html2Wml/html2wml-0.4.x/
HOMEPAGE=	http://maddingue.free.fr/softwares/html2wml.html.en

MAINTAINER=     Shell Hung <shell@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

BUILD_DEPENDS=	:p5-libwww-*:www/p5-libwww \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:p5-XML-LibXML-*:textproc/p5-XML-LibXML \
		:p5-XML-Checker-*:textproc/p5-XML-Checker \
		:p5-Text-Template-*:textproc/p5-Text-Template
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
