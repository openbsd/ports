# $OpenBSD: Makefile,v 1.44 2015/07/02 13:21:07 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl binding for libxml2

DISTNAME =		XML-LibXML-2.0121
EPOCH =			0

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m xml2 z

MODULES =		cpan converters/libiconv
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11
LIB_DEPENDS =		textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
