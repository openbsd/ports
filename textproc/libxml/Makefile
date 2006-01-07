# $OpenBSD: Makefile,v 1.93 2006/01/07 10:17:12 steven Exp $

COMMENT=		"XML parsing library"

VERSION=		2.6.16
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}p7
SHARED_LIBS=		xml2	9.0
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.6/}

HOMEPAGE=		http://xmlsoft.org/ 

#FAKE=			all
# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z 

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ARGS+=	--with-html-subdir="libxml2/html"
CONFIGURE_ARGS+=	--with-iconv="${DEPBASE}"
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-threads

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/

# XXX let's cheat
#post-configure:
#	@perl -pi.bak -e \
#		's,${DEPBASE}/include,\$$\{includedir\},g; \
#		 s,${DEPBASE}/lib,\$$\{libdir\},g; \
#		 s,${DEPBASE}/,\$$\{prefix\}/,g;' \
#	    ${WRKBUILD}/libxml-2.0.pc ${WRKBUILD}/xml2-config

#post-install:
#	perl -pi.bak -e \
#		'print ": \$${DEPBASE:=${LOCALBASE}}\n" if m/^dlname/; \
#		 s,dependency_libs='\''(.*)'\'',dependency_libs=\"$$1\",g; \
#		 s,${DEPBASE},\$$\{DEPBASE\},g; \
#		 s,${TRUEPREFIX}(/lib/.*?\.la),\$$\{DEPBASE\}$$1,g;' \
#	    ${PREFIX}/lib/libxml2.la


.include <bsd.port.mk>
