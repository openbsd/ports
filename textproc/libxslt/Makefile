# $OpenBSD: Makefile,v 1.41 2004/11/11 22:08:13 espie Exp $

COMMENT=		"XSLT C Library for GNOME"

DISTNAME=		libxslt-1.1.12
PKGNAME=		$(DISTNAME)p0
CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxslt/1.1/}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		xml2.8::textproc/libxml \
			gcrypt.12::security/libgcrypt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+=	--without-python

MAKE_FLAGS=	libxslt_la_LDFLAGS='-version-info 3:0:0' \
		libexslt_la_VERSION='-version-info 9:0:0'

.include <bsd.port.mk>
