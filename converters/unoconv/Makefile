# sync with editors/libreoffice
ONLY_FOR_ARCHS=		amd64 i386

PKG_ARCH=		*

COMMENT=		UNiversal Office CONVerter

GH_ACCOUNT=		unoconv
GH_PROJECT=		unoconv
GH_TAGNAME=		0.9.0
REVISION=		1

CATEGORIES=		converters textproc

HOMEPAGE=		http://dag.wiee.rs/home-made/unoconv/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	unoconv
# override the python MODULE
CONFIGURE_STYLE=	None

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/asciidoc

RUN_DEPENDS=		editors/libreoffice

FAKE_FLAGS=		prefix=${TRUEPREFIX} \
			mandir=${TRUEPREFIX}/man

FAKE_TARGET=		install install-links

NO_TEST=		Yes

.include <bsd.port.mk>
