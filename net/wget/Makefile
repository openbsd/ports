# $OpenBSD: Makefile,v 1.46 2008/10/09 18:50:44 sthen Exp $

COMMENT=	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME=	wget-1.11.4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU:=wget/}

HOMEPAGE=	http://www.gnu.org/software/wget/

MODULES=	devel/gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
