# $OpenBSD: Makefile,v 1.44 2017/10/23 21:46:43 jeremy Exp $

COMMENT=		Ruby interface to hyperestraier

V=			1.4.10
DISTNAME=		estraier-${V}
PKGNAME=		hyperestraier-${V}
CATEGORIES=		textproc

HOMEPAGE=		http://fallabs.com/hyperestraier/rubynativeapi/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

WANTLIB +=		estraier iconv qdbm z

LIB_DEPENDS=		textproc/hyperestraier

CONFIGURE_STYLE=	ruby gem ext

pre-configure:
	rm -r ${WRKSRC}/lib

.include <bsd.port.mk>
