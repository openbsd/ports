COMMENT=		GUI designer for wxWidgets/wxPython user interfaces

MODPY_EGG_VERSION=	1.0.0
DISTNAME=		wxGlade-${MODPY_EGG_VERSION}
PKGNAME=		wxglade-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.zip
REVISION=		0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxglade/}

CATEGORIES=		devel x11

HOMEPAGE=		http://wxglade.sourceforge.net/
MAINTAINER=		Daniel Winters <daniel@tydirium.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS=	Yes

MODPY_ADJ_FILES=	./*.py test/*.py test/casefiles/*.py

RUN_DEPENDS=		x11/py-wxPython \
			devel/desktop-file-utils

PORTHOME=		${WRKDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wxglade ${WRKSRC}/wxGlade.desktop

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	mv ${WRKSRC}/wxGlade.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
