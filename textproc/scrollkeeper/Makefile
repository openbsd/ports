# $OpenBSD: Makefile,v 1.10 2002/11/30 04:41:29 marcm Exp $

COMMENT=		"Scrollkeeper Open Documentation Cataloging System"

DISTNAME=		scrollkeeper-0.3.11
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

MODULES=		gettext

BUILD_DEPENDS=		:docbook->=4.1.2:textproc/docbook \
			:intltool->=0.8.4:textproc/intltool
RUN_DEPENDS=		:docbook->=4.1.2:textproc/docbook
LIB_DEPENDS=		xml2.6::textproc/libxml \
			xslt.1::textproc/libxslt

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--localstatedir=/var
CONFIGURE_ARGS+=	--with-omfdirs=${LOCALBASE}/share/omf
CONFIGURE_ENV=   	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/xml; \
	sh ${FILESDIR}/buildDocBookCatalog.openbsd
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scrollkeeper; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/scrollkeeper/

.include <bsd.port.mk>
