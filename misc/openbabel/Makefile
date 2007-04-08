# $OpenBSD: Makefile,v 1.2 2007/04/08 10:10:23 ajacoutot Exp $

COMMENT=	"chemistry file translation program"

V=		2.1.0
DISTNAME=	openbabel-${V}
CATEGORIES=	misc

SHARED_LIBS+=	inchi		0.1	# .0.1
SHARED_LIBS+=	openbabel	3.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

WANTLIB=	c iconv m stdc++ z

SUBST_VARS=	V

LIB_DEPENDS=	xml2.>=9::textproc/libxml
REGRESS_DEPENDS=::misc/openbabel

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
