# $OpenBSD: Makefile,v 1.19 2014/08/09 19:31:22 jca Exp $

COMMENT-main=		free UML builder with extensions
COMMENT-docs=		bouml documentation

V=			4.22.2
DISTNAME=		bouml_$V
PKGNAME=		bouml-$V
PKGNAME-main=		bouml-$V
PKGNAME-docs=		bouml-docs-$V
REVISION-main =		3
REVISION-docs=		0

CATEGORIES=		devel x11

HOMEPAGE=		http://bouml.free.fr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${_MASTER_SITE_FREEBSD}
MASTER_SITES0=		${HOMEPAGE}

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			doc4.23${EXTRACT_SUFX}:0

MULTI_PACKAGES= 	-main -docs

WANTLIB =		X11 Xext c m pthread stdc++

RUN_DEPENDS-main=	devel/desktop-file-utils \
			x11/gtk+2,-guic

MODULES=		x11/qt3
USE_GMAKE=		Yes
NO_TEST=		Yes

ALL_TARGET=		# empty
CONFIGURE_STYLE=	# empty

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=	# empty
RUN_DEPENDS-docs=	# empty
WANTLIB-docs =		# empty

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-configure:
	cd ${WRKSRC}/src && ${LOCALBASE}/bin/qmake -unix

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bouml
	cd ${WRKDIR}/doc && pax -rw . ${PREFIX}/share/doc/bouml
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/

.include <bsd.port.mk>
