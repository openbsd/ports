# $OpenBSD: Makefile,v 1.7 2001/04/17 15:53:38 avsm Exp $

COMMENT=		"fast, compact and portable XSL/XSLT processor"

DISTNAME=		Sablot-0.52
PKGNAME=		sablotron-0.52
CATEGORIES=     	textproc
NEED_VERSION=		1.391

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.gingerall.cz/download/

LIB_DEPENDS=		expat.2::textproc/expat \
			iconv.2::converters/libiconv

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV+=         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
