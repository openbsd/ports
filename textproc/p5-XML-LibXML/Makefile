# $OpenBSD: Makefile,v 1.59 2019/07/12 20:50:08 sthen Exp $

COMMENT =	perl binding for libxml2

DISTNAME =	XML-LibXML-2.0134
EPOCH =		0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv lzma m perl pthread xml2 z

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11 \
			textproc/p5-XML-SAX-Base
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
