# $OpenBSD: Makefile,v 1.4 2009/06/25 01:03:09 jolan Exp $

COMMENT=	European Molecular Biology Open Software Suite

DISTNAME=	EMBOSS-6.0.1
PKGNAME=	EMBOSS-6.0.1p0
SHARED_LIBS +=  eplplot                 0.0   # .5.7
SHARED_LIBS +=  ajax                    1.0   # .6.0
SHARED_LIBS +=  ajaxg                   1.0   # .6.0
SHARED_LIBS +=  nucleus                 1.0   # .6.0

CATEGORIES=	biology

HOMEPAGE=	http://emboss.sourceforge.net/

# GPL v2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	ftp://emboss.open-bio.org/pub/EMBOSS/

WANTLIB=	X11 Xau Xdmcp c m

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --without-java
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
