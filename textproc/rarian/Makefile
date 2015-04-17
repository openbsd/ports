# $OpenBSD: Makefile,v 1.22 2015/04/17 09:54:10 ajacoutot Exp $

COMMENT=		documentation metadata library

GNOME_PROJECT=		rarian
GNOME_VERSION=		0.8.1
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=	rarian               0.0      # .0.0

CATEGORIES=		textproc

REVISION=		13

HOMEPAGE=		http://rarian.freedesktop.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MODULES=		x11/gnome

BUILD_DEPENDS=		shells/bash \
			textproc/libxslt

RUN_DEPENDS=		shells/bash \
			textproc/docbook \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-skdb-update

# The .in files in ${WRKSRC}/util/ don't have a newline at the end
# of the file, which causes diff(1) to puke.
post-extract:
	@echo "" >> ${WRKSRC}/util/rarian-sk-*.in

pre-configure:
	${SUBST_CMD} ${WRKSRC}/librarian/rarian-main.c \
		${WRKSRC}/librarian/rarian-man.c \
		${WRKSRC}/librarian/rarian-info.c

post-install:
	rm -rf ${WRKINST}/var/lib

.include <bsd.port.mk>
