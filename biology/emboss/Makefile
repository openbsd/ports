# $OpenBSD: Makefile,v 1.15 2019/11/11 17:35:10 jca Exp $

PORTROACH=	ignore:1

COMMENT=	European Molecular Biology Open Software Suite

DISTNAME=	EMBOSS-6.0.1
REVISION=	5
SHARED_LIBS +=  eplplot                 0.0   # .5.7
SHARED_LIBS +=  ajax                    1.0   # .6.0
SHARED_LIBS +=  ajaxg                   1.0   # .6.0
SHARED_LIBS +=  nucleus                 1.0   # .6.0

CATEGORIES=	biology

HOMEPAGE=	 http://emboss.open-bio.org/

# GPL v2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

WANTLIB += X11 c m xcb

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --without-java \
		--without-pngdriver \
		--bindir="${PREFIX}/libexec/emboss"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DOC_DIRS=	manuals tutorials programs/text programs/html

pre-configure:
.for d in ${DOC_DIRS}
	perl -pi -e \
	  's#\$$\(prefix\)/share/\$$\(PACKAGE\)/doc#\$$(datadir)/doc/\$$(PACKAGE)#' \
	  ${WRKSRC}/doc/$d/Makefile.in
.endfor

post-install:
	rm -f ${PREFIX}/include/pcre*

.include <bsd.port.mk>
