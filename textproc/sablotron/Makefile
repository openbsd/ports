# $OpenBSD: Makefile,v 1.8 2001/06/18 21:35:27 avsm Exp $

COMMENT=		"fast, compact and portable XSL/XSLT processor"

V=			0.60
DISTNAME=		Sablot-${V}
PKGNAME=		sablotron-${V}
CATEGORIES=     	textproc
NEED_VERSION=		1.391

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.gingerall.cz/download/archive_GA/sablot/${V}/

LIB_DEPENDS=		expat.2::textproc/expat \
			iconv.2::converters/libiconv

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV+=         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
