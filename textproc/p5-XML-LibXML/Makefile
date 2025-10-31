COMMENT =	perl binding for libxml2

DISTNAME =	XML-LibXML-2.0210
EPOCH =		0
REVISION =	0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl xml2

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport \
			textproc/p5-XML-SAX \
			textproc/p5-XML-SAX-Base
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml
TEST_DEPENDS =		devel/p5-Test-LeakTrace

CONFIGURE_ENV =		SKIP_SAX_INSTALL=1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
