# $OpenBSD: Makefile,v 1.2 2012/09/08 07:55:00 ajacoutot Exp $

COMMENT=	PDF transformation and inspection utility

DISTNAME=	qpdf-3.0.2

SHARED_LIBS +=  qpdf                      0.0 # 8.2

CATEGORIES=	print graphics

HOMEPAGE=	http://qpdf.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m pcre stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qpdf/}

VMEM_WARNING=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
