# $OpenBSD: Makefile,v 1.8 2004/08/10 09:14:48 xsa Exp $

COMMENT=		"spreadsheet application for GNOME"

VERSION=		1.2.13
DISTNAME=		gnumeric-${VERSION}
CATEGORIES=    		math x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/gnumeric/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnumeric/1.2/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gsf-1.9.2,gsf-gnome-1.9.2::devel/libgsf,-gnome

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-bonobo
CONFIGURE_ARGS+=	--without-gda
CONFIGURE_ARGS+=	--without-gb
CONFIGURE_ARGS+=	--without-guile
CONFIGURE_ARGS+=	--without-long-double
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnumeric
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		VERSION


post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
