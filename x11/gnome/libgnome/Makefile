# $OpenBSD: Makefile,v 1.7 2004/10/09 14:46:12 sturm Exp $

COMMENT=		"libraries for the GNOME project"

DISTNAME=		libgnome-2.6.1.1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnome/2.6/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		esd.2.26::audio/esound \
			gnomevfs-2::x11/gnome/vfs2 \
			audiofile::devel/libaudiofile \
			xslt.1::textproc/libxslt

CONFDIR=		${SYSCONFDIR}/gnome
SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libgnome; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>
