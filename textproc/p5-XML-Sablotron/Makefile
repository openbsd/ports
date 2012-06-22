# $OpenBSD: Makefile,v 1.26 2012/06/22 16:56:22 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	perl interface to the Sablotron XSLT engine

DISTNAME=	XML-Sablotron-1.01
REVISION=	0
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.gingerall.org/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 / MPL1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	expat m sablot>=100

MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

MODULES=	converters/libiconv
LIB_DEPENDS=	textproc/sablotron

USE_GROFF =	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	 EXPATLIBPATH="${X11BASE}/lib" EXPATINCPATH="${X11BASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mgcc4}
CONFIGURE_ENV+=	LDFLAGS="-lstdc++"
WANTLIB+=	stdc++
.endif

.include <bsd.port.mk>
