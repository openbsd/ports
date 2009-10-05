# $OpenBSD: Makefile,v 1.16 2009/10/05 10:20:59 benoit Exp $

COMMENT =	on-the-fly HTML to WML conversion

DISTNAME =	html2wml-0.4.11
CATEGORIES =	converters www perl5

HOMEPAGE =	http://maddingue.free.fr/softwares/html2wml.html.en

# GPLv2
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

MASTER_SITES =	http://maddingue.free.fr/softwares/download/Html2Wml/

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:p5-libwww-*:www/p5-libwww \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:p5-XML-LibXML-*:textproc/p5-XML-LibXML \
		:p5-XML-Checker-*:textproc/p5-XML-Checker \
		:p5-Text-Template-*:textproc/p5-Text-Template

NO_BUILD =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
