# $OpenBSD: Makefile,v 1.21 2013/03/21 08:46:34 ajacoutot Exp $

COMMENT=		lightweight Jabber client library

DISTNAME=       	loudmouth-1.4.3
REVISION=		4
SHARED_LIBS +=	loudmouth-1          3.0      # .1.0
CATEGORIES=		net devel

HOMEPAGE=       	http://groups.google.com/group/loudmouth-dev/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		crypto pcre ssl glib-2.0 idn>=16

MODULES=		devel/gettext

MASTER_SITES=   	${MASTER_SITE_GNOME:=sources/loudmouth/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		devel/glib2 \
			devel/libidn
BUILD_DEPENDS=		${TEST_DEPENDS}
TEST_DEPENDS=	devel/check

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-mono \
			--with-check=${LOCALBASE} \
			--with-ssl=openssl

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
