# $OpenBSD: Makefile,v 1.5 2004/08/10 08:46:49 xsa Exp $

COMMENT=		"PDF viewer for GNOME"

DISTNAME=		gpdf-0.132
CATEGORIES=		textproc x11/gnome

HOMEPAGE=		http://www.inf.tu-dresden.de/~mk793652/gpdf/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gpdf/0.132/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gpdf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
