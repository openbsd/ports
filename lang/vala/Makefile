# $OpenBSD: Makefile,v 1.14 2009/04/07 21:45:59 ajacoutot Exp $

COMMENT=		compiler for the GObject type system

GNOME_PROJECT=		vala
GNOME_VERSION=		0.7.0

SHARED_LIBS +=	vala                 2.0      # .0.0

CATEGORIES=		lang

HOMEPAGE=		http://live.gnome.org/Vala

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcre pthread

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt \
			::textproc/p5-XML-LibXML
LIB_DEPENDS=		glib-2.0.>=1800,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2
REGRESS_DEPENDS=	::shells/bash	

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-vapigen
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/tests/testrunner.sh

.include <bsd.port.mk>
