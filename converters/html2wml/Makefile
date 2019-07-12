# $OpenBSD: Makefile,v 1.23 2019/07/12 21:02:13 sthen Exp $

COMMENT =	on-the-fly HTML to WML conversion

DISTNAME =	html2wml-0.4.11
CATEGORIES =	converters www perl5
REVISION =	0

HOMEPAGE =	http://maddingue.free.fr/softwares/html2wml.html.en

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =	http://maddingue.free.fr/softwares/download/Html2Wml/ \
		${MASTER_SITE_SOURCEFORGE:=htmlwml/}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/p5-libwww \
		www/p5-CGI \
		textproc/p5-XML-Parser \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-Checker \
		textproc/p5-Text-Template

NO_BUILD =	Yes
USE_GMAKE =	Yes
MAKE_ENV +=	MAKE_PROGRAM='${MAKE_PROGRAM}'
NO_TEST =	Yes

.include <bsd.port.mk>
