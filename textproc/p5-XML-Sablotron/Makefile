# $OpenBSD: Makefile,v 1.22 2010/10/19 07:54:25 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	perl interface to the Sablotron XSLT engine

DISTNAME=	XML-Sablotron-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.gingerall.org/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 / MPL1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	expat m

MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

MODULES=	converters/libiconv
LIB_DEPENDS=	sablot.>=100::textproc/sablotron

USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	 EXPATLIBPATH="${X11BASE}/lib" EXPATINCPATH="${X11BASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.own.mk>
.if ${COMPILER_VERSION:L:Mgcc[34]*}
CONFIGURE_ENV+=	LDFLAGS="-lstdc++"
WANTLIB+=	stdc++
.endif

.include <bsd.port.mk>
