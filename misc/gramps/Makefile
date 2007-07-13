# $OpenBSD: Makefile,v 1.1.1.1 2007/07/13 20:03:36 ajacoutot Exp $

COMMENT=	genealogical research and analysis management program system

DISTNAME=	gramps-2.2.8
CATEGORIES=	misc x11

HOMEPAGE=	http://www.gramps-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gramps/}

MODULES=	lang/python
BUILD_DEPENDS=	:py-gnome-*:x11/gnome/py-gnome \
		:gnome-doc-utils-*:x11/gnome/doc-utils \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=	:py-gnome-*:x11/gnome/py-gnome \
		:python-bsddb-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-bsddb \
		:py-reportlab-*:print/py-reportlab/reportlab \
		:graphviz-*:math/graphviz \
		:shared-mime-info-*:misc/shared-mime-info \
		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--localedir=${LOCALBASE}/share/locale \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gramps \
		--disable-scrollkeeper \
		--disable-schemas-install

.include <bsd.port.mk>
