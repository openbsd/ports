COMMENT=	text document format for writing documents and man pages

MODPY_DISTV=	10.2.1
REVISION=	0
DISTNAME=	asciidoc-${MODPY_DISTV}

CATEGORIES=	textproc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# https://github.com/asciidoc/asciidoc-py3
HOMEPAGE=	https://asciidoc-py.github.io/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/asciidoc/asciidoc-py3/releases/download/${MODPY_DISTV}/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	textproc/docbook-xsl

RUN_DEPENDS=	textproc/docbook-xsl \
		w3m-*|lynx-*:www/w3m

USE_GMAKE=	Yes
TEST_DEPENDS=	devel/py-test-mock

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/doc/testasciidoc.*

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
