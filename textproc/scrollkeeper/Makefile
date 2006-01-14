# $OpenBSD: Makefile,v 1.18 2006/01/14 19:38:02 steven Exp $

COMMENT=		"Scrollkeeper Open Documentation Cataloging System"

VERSION=		0.3.14
DISTNAME=		scrollkeeper-${VERSION}
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		scrollkeeper	1.0
CATEGORIES=		textproc

HOMEPAGE=		http://scrollkeeper.sourceforge.net

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/scrollkeeper/0.3/}
EXTRACT_SUFX=		.tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z 

MODULES=		devel/gettext

BUILD_DEPENDS=		:docbook->=4.2p1:textproc/docbook \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:docbook->=4.2p1:textproc/docbook
LIB_DEPENDS=		xml2.7:libxml->=2.6.16p6:textproc/libxml \
			xslt.1::textproc/libxslt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--localstatedir=/var
CONFIGURE_ARGS+=	--with-omfdirs=${LOCALBASE}/share/omf
CONFIGURE_ARGS+=	--with-xml-catalog=/var/db/xmlcatalog
CONFIGURE_ENV=   	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scrollkeeper; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/scrollkeeper/
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/scrollkeeper.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
