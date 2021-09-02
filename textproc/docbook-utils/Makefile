# $OpenBSD: Makefile,v 1.1.1.1 2021/09/02 20:14:58 ajacoutot Exp $

COMMENT=		generates various output formats from DocBook SGML documents

DISTNAME=		docbook-utils-0.6.14

CATEGORIES=		textproc

HOMEPAGE=		https://www.sourceware.org/docbook-tools/

# GPLv2
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/docbook-dsssl \
			textproc/openjade

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
