COMMENT =	interface to GNOME libxslt library

DISTNAME =	XML-LibXSLT-2.003000
REVISION =	1

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl, MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c exslt m perl xml2 xslt z

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-LibXML>=1.70
LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt>1.1.27
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
