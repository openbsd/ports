# $OpenBSD: Makefile,v 1.33 2000/09/24 07:04:03 brad Exp $

DISTNAME=	glib-1.2.8
CATEGORIES=	devel
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --includedir="${PREFIX}/include/glib"

FLAVORS=	threads
FLAVOR?=

.if ${FLAVOR:L} == "threads"
. if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthreads are currently not working on the SPARC architecture"
. endif
CONFIGURE_ARGS+= --enable-threads
.else
CONFIGURE_ARGS+= --disable-threads
.endif

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/glib.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
