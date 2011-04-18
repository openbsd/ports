# $OpenBSD: Makefile,v 1.24 2011/04/18 11:56:01 sebastia Exp $

COMMENT=	GNUstep gui library

DISTNAME =	gnustep-gui-0.20.0

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS =	gnustep-gui 0.20	# .0.20.0

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += objc gnustep-base asn1 crypto gssapi krb5 ssl stdc++
WANTLIB += tiff z ao jpeg ungif png cups aspell c m pthread sndfile

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI=No

LIB_DEPENDS=	audio/libao \
		audio/libsndfile \
		graphics/jpeg \
		graphics/libungif \
		graphics/png \
		print/cups \
		textproc/aspell/core

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm -pthread"
CONFIGURE_ARGS=	--with-x
USE_GROFF =	Yes

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
