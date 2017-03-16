# $OpenBSD: Makefile,v 1.54 2017/03/16 17:41:51 bluhm Exp $

COMMENT =	perl binding for libxml2

DISTNAME =	XML-LibXML-2.0129
EPOCH =		0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv lzma m perl xml2 z

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11 \
			textproc/p5-XML-SAX-Base
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
