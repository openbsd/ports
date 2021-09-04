# $OpenBSD: Makefile,v 1.2 2021/09/04 12:23:48 ajacoutot Exp $

COMMENT=		generates various output formats from DocBook SGML documents

DISTNAME=		docbook-utils-0.6.14
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		https://www.sourceware.org/docbook-tools/

# GPLv2
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/

USE_GMAKE=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		textproc/docbook \
			textproc/docbook-dsssl \
			textproc/openjade

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
