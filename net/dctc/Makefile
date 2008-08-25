# $OpenBSD: Makefile,v 1.10 2008/08/25 15:14:43 jasper Exp $

COMMENT=		Direct Connect clone

DISTNAME=		dctc-0.85.9
CATEGORIES=		net
HOMEPAGE=		http://ac2i.homelinux.com/dctc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

WANTLIB=		c gpg-error m pcre pthread z

LIB_DEPENDS=		db::databases/db/v4 \
			glib-2.0,gthread-2.0::devel/glib2 \
			gcrypt::security/libgcrypt \
			xml2::textproc/libxml

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
AUTOCONF_VERSION=	2.57
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-DMSG_NOSIGNAL=0 \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/db4" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
 	echo "#undef HAVE_LIBPTHREAD" > ${WRKSRC}/acconfig.h
	rm -fr ${WRKSRC}/Documentation/Documentation/CVS/

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dctc; \
	    cp -R ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/dctc/

.include <bsd.port.mk>
