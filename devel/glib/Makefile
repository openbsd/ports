# $OpenBSD: Makefile,v 1.36 2001/03/22 14:52:08 brad Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		"BROKEN on powerpc: reason unknown at the moment"
.endif

DISTNAME=	glib-1.2.9
CATEGORIES=	devel
NEED_VERSION=	1.336
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
CONFIGURE_ARGS+= --enable-static

FLAVORS=	threads
FLAVOR?=

.if ${FLAVOR:L} == "threads"
. if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "powerpc"
BROKEN=		"pthreads are currently not working on the ${MACHINE_ARCH} architecture"
. endif
CONFIGURE_ARGS+= --enable-threads
.else
CONFIGURE_ARGS+= --disable-threads
.endif

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
