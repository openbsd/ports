# $OpenBSD: Makefile,v 1.51 2016/08/10 12:22:33 bluhm Exp $

COMMENT =		perl binding for libxml2

DISTNAME =		XML-LibXML-2.0128
EPOCH =			0

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m perl xml2 z

MODULES =		cpan converters/libiconv
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11 \
			textproc/p5-XML-SAX-Base
LIB_DEPENDS =		textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
