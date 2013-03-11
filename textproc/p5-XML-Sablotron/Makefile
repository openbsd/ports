# $OpenBSD: Makefile,v 1.29 2013/03/11 11:42:45 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Sablotron XSLT engine

DISTNAME=	XML-Sablotron-1.01
# does NOT use cpan module so the p5- prefix is not automatic.
PKGNAME=	p5-${DISTNAME}
REVISION=	2
CATEGORIES=	textproc perl5

HOMEPAGE=	http://sourceforge.net/projects/sablotron/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 / MPL1.1
PERMIT_PACKAGE_CDROM=	Yes

# perl updates should force this to update, hence perl is listed as WANTLIB
# even though it will be marked 'Extra' by check-lib-depends.
WANTLIB=	c expat m perl sablot>=100

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sablotron/}

MODULES=	converters/libiconv
LIB_DEPENDS=	textproc/sablotron

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	 EXPATLIBPATH="${X11BASE}/lib" EXPATINCPATH="${X11BASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mgcc4}
CONFIGURE_ENV+=	LDFLAGS="-lstdc++"
WANTLIB+=	stdc++
.endif

.include <bsd.port.mk>
