# $OpenBSD: Makefile,v 1.2 2013/03/11 11:20:28 espie Exp $

COMMENT=		powerful stack-based, multi-threaded language

V=			5.1.2
DISTNAME=		onyx-$V
CATEGORIES=		lang

SHARED_LIBS +=		onyx 0.0

HOMEPAGE=		http://www.canonware.com/onyx/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses edit m pcre pthread

BUILD_DEPENDS=		devel/cook
LIB_DEPENDS=		devel/pcre

MASTER_SITES=		http://www.canonware.com/download/onyx/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/libonyx/Cookfile.inc.in

do-build:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/cook

do-install:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/cook PREFIX=${PREFIX} install

do-test:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/cook check

.include <bsd.port.mk>
