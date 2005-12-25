# $OpenBSD: Makefile,v 1.5 2005/12/25 15:52:38 sturm Exp $

COMMENT=		"library and utilities for towitoko card readers"

DISTNAME=		towitoko-2.0.7
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security
SHARED_LIBS=		towitoko	2.0
MODGNU_SHARED_LIBS=	towitoko	'-module'

HOMEPAGE=		http://www.geocities.com/cprados/

MAINTAINER=		Michael Coulter <mjc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=		http://www.geocities.com/cprados/files/

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}	\
			--enable-static

EXAMPLES=		doc/reader.conf

post-install:
	@perl -pi -e "s,%%PREFIX%%,${TRUEPREFIX}," ${WRKSRC}/doc/reader.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/towitoko
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/towitoko

.include <bsd.port.mk>
