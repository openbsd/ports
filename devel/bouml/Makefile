# $OpenBSD: Makefile,v 1.4 2009/09/01 09:35:28 jasper Exp $

COMMENT-main=		free UML builder with extensions
COMMENT-docs=		bouml documentation

V=			4.13.1
DISTNAME=		bouml_$V
PKGNAME=		bouml-$V
PKGNAME-main=		bouml-$V
PKGNAME-docs=		bouml-docs-$V

CATEGORIES=		devel x11

HOMEPAGE=		http://bouml.free.fr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bouml/}

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			doc4.9${EXTRACT_SUFX}

MULTI_PACKAGES= 	-main -docs

WANTLIB-main=		X11 Xext c m pthread pthread-stubs stdc++ xcb

RUN_DEPENDS-main=	::devel/desktop-file-utils

MODULES=		x11/qt3
USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

ALL_TARGET=		# empty
CONFIGURE_STYLE=	# empty

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=	# empty
RUN_DEPENDS-docs=	# empty

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-configure:
	cd ${WRKSRC}/src && ${LOCALBASE}/bin/qmake -unix

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bouml
	cd ${WRKDIR}/doc && pax -rw . ${PREFIX}/share/doc/bouml
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/

.include <bsd.port.mk>
