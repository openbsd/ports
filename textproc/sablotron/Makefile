# $OpenBSD: Makefile,v 1.12 2002/05/16 03:49:26 avsm Exp $

COMMENT=		"fast, compact and portable XSL/XSLT processor"

V=			0.90
DISTNAME=		Sablot-${V}
PKGNAME=		sablotron-${V}
CATEGORIES=     	textproc
NEED_VERSION=		1.460

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download-2.gingerall.cz/download/sablot/

MODULES=		iconv
LIB_DEPENDS=		expat.2::textproc/expat

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/tools
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV+=         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV+=		${CONFIGURE_ENV}

.include <bsd.port.mk>
