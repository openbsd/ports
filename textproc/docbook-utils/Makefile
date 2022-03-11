COMMENT=		generates various output formats from DocBook SGML documents

DISTNAME=		docbook-utils-0.6.14
REVISION=		1

CATEGORIES=		textproc

HOMEPAGE=		https://www.sourceware.org/docbook-tools/

# GPLv2
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/

USE_GMAKE=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		textproc/docbook \
			textproc/docbook-dsssl \
			textproc/openjade>=1.3.3pre1p9

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
