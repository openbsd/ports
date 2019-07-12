# $OpenBSD: Makefile,v 1.46 2019/07/12 20:50:14 sthen Exp $

COMMENT=		Ruby interface to hyperestraier

V=			1.4.10
DISTNAME=		estraier-${V}
PKGNAME=		hyperestraier-${V}
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://fallabs.com/hyperestraier/rubynativeapi/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

WANTLIB +=		estraier iconv qdbm z

LIB_DEPENDS=		textproc/hyperestraier

CONFIGURE_STYLE=	ruby gem ext

pre-configure:
	rm -r ${WRKSRC}/lib

.include <bsd.port.mk>
