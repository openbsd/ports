# $OpenBSD: Makefile,v 1.16 2006/08/03 23:55:11 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl interface to the Sablotron XSLT engine"

DISTNAME=	XML-Sablotron-1.0
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc perl5
MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

HOMEPAGE=	http://www.gingerall.cz/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MODULES=	converters/libiconv
LIB_DEPENDS=	sablot.>=100::textproc/sablotron \
		expat.>=4::textproc/expat

# GPL/Mozilla
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m 

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=  EXPATLIBPATH="${LOCALBASE}/lib" EXPATINCPATH="${LOCALBASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.own.mk>
USE_GCC3?= No
.if ${USE_GCC3:L} == "yes"
CONFIGURE_ENV+=	LDFLAGS="-lstdc++"
WANTLIB+=	stdc++
.endif

.include <bsd.port.mk>
