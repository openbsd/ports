# $OpenBSD: Makefile,v 1.27 2012/08/23 14:44:39 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Sablotron XSLT engine

DISTNAME=	XML-Sablotron-1.01
# does NOT use cpan module so the p5- prefix is not automatic.
PKGNAME=	p5-${DISTNAME}
REVISION=	1
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.gingerall.org/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 / MPL1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# perl updates should force this to update, hence perl is listed as WANTLIB
# even though it will be marked 'Extra' by check-lib-depends.
WANTLIB=	c expat m perl sablot>=100

MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

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
