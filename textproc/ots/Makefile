# $OpenBSD: Makefile,v 1.17 2013/10/24 15:32:09 ajacoutot Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.5.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libots/}

SHARED_LIBS +=  ots-1                5.0      # 5.0

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 m pcre popt pthread xml2 z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 \
		devel/popt \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
