# $OpenBSD: Makefile,v 1.11 2011/01/12 14:33:35 jasper Exp $

COMMENT-main=		free UML builder with extensions
COMMENT-docs=		bouml documentation

V=			4.22.2
DISTNAME=		bouml_$V
PKGNAME=		bouml-$V
PKGNAME-main=		bouml-$V
PKGNAME-docs=		bouml-docs-$V
REVISION-docs=		0

CATEGORIES=		devel x11

HOMEPAGE=		http://bouml.free.fr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bouml/}

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			doc4.23${EXTRACT_SUFX}

MULTI_PACKAGES= 	-main -docs

WANTLIB =		X11 Xext c m pthread stdc++

RUN_DEPENDS-main=	devel/desktop-file-utils

MODULES=		x11/qt3
USE_GMAKE=		Yes
NO_REGRESS=		Yes

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
