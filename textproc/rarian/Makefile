# $OpenBSD: Makefile,v 1.27 2017/07/26 22:45:31 sthen Exp $

COMMENT=		documentation metadata library

GNOME_PROJECT=		rarian
GNOME_VERSION=		0.8.1
EXTRACT_SUFX=		.tar.bz2
REVISION =		16

SHARED_LIBS +=	rarian               0.0      # .0.0

CATEGORIES=		textproc

HOMEPAGE=		http://rarian.freedesktop.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/libxslt

RUN_DEPENDS=		textproc/docbook \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-skdb-update
CONFIGURE_ENV=		ac_cv_path_have_bash=/bin/sh

# The .in files in ${WRKSRC}/util/ don't have a newline at the end
# of the file, which causes diff(1) to puke.
post-extract:
	@echo >> ${WRKSRC}/util/rarian-sk-*.in
	@echo >> ${WRKSRC}/util/rarian-sk-extract.in

pre-configure:
	${SUBST_CMD} ${WRKSRC}/librarian/rarian-main.c \
		${WRKSRC}/librarian/rarian-man.c \
		${WRKSRC}/librarian/rarian-info.c

post-install:
	rm -rf ${WRKINST}/var/lib

.include <bsd.port.mk>
