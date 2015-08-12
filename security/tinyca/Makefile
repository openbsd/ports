# $OpenBSD: Makefile,v 1.14 2015/08/12 06:13:56 ajacoutot Exp $

COMMENT=	GUI to manage a certification authority

DISTNAME=	tinyca2-0.7.5
REVISION=	5
CATEGORIES=	security

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.bsdfrog.org/

RUN_DEPENDS=	archivers/zip \
		devel/p5-Locale-gettext \
		x11/p5-Gtk2
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/gettext-tools

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH= *

LANGS=		cs de es fr sv

do-configure:
	@${SUBST_CMD} ${WRKSRC}/tinyca2

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tinyca2 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca2/templates
	${INSTALL_DATA} ${WRKSRC}/templates/openssl.cnf \
		${PREFIX}/share/tinyca2/templates

.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca2/locale/$l/LC_MESSAGES/
	@msgfmt ${WRKSRC}/po/$l.po \
		-o ${PREFIX}/share/tinyca2/locale/$l/LC_MESSAGES/tinyca2.mo
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}/lib/tinyca2/GUI
	${INSTALL_DATA} ${WRKSRC}/lib/*.pm ${PREFIX}/lib/tinyca2
	${INSTALL_DATA} ${WRKSRC}/lib/GUI/*.pm ${PREFIX}/lib/tinyca2/GUI

.include <bsd.port.mk>
