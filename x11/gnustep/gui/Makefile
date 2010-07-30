# $OpenBSD: Makefile,v 1.19 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT=	GNUstep gui library

DISTNAME=	gnustep-gui-0.18.0
REVISION=	1

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS=	gnustep-gui 0.18	# .0.18.0

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += asn1 c crypto gssapi krb5 m objc pthread ssl stdc++ sndfile
WANTLIB += tiff z ao jpeg ungif png cups aspell gnustep-base

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep

LIB_DEPENDS=	::audio/libao \
		::audio/libsndfile \
		::graphics/jpeg \
		::graphics/libungif \
		::graphics/png \
		::print/cups \
		::textproc/aspell/core \
		::x11/gnustep/base

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm -pthread"
CONFIGURE_ARGS=	--with-x

pre-configure:
	@perl -pi -e 's,^GNUSTEP_GUI_MAJOR_VERSION=.*,GNUSTEP_GUI_MAJOR_VERSION=${LIBgnustep-gui_VERSION:R},g;' \
		-e 's,^GNUSTEP_GUI_MINOR_VERSION=.*,GNUSTEP_GUI_MINOR_VERSION=${LIBgnustep-gui_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	${INSTALL_MAN} ${WRKSRC}/Documentation/make_services.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/Documentation/gopen.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
