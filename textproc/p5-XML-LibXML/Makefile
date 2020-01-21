# $OpenBSD: Makefile,v 1.61 2020/01/21 20:34:40 bluhm Exp $

COMMENT =	perl binding for libxml2

DISTNAME =	XML-LibXML-2.0202
EPOCH =		0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv lzma m perl pthread xml2 z

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11 \
			textproc/p5-XML-SAX-Base
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
