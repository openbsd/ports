# $OpenBSD: Makefile,v 1.2 2005/05/25 06:09:11 msf Exp $

COMMENT=	"GUI to manage a certification authority"

DISTNAME=	tinyca-0.6.8
CATEGORIES=	security

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

HOMEPAGE=	http://tinyca.sm-zone.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	::x11/p5-Gtk,gnome \
		::devel/p5-Locale-gettext \
		::archivers/zip

NO_REGRESS=	Yes
NO_BUILD=	Yes

PKG_ARCH= *

do-configure:
	@perl -i -pe 's#%%LOCALBASE%%#${LOCALBASE}#' ${WRKSRC}/tinyca
	@perl -i -pe 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/tinyca

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tinyca ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca/templates
	${INSTALL_DATA} ${WRKSRC}/templates/openssl.cnf ${PREFIX}/share/tinyca/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca/locale/de/LC_MESSAGES/
	@msgfmt ${WRKSRC}/po/de.po -o ${PREFIX}/share/tinyca/locale/de/LC_MESSAGES/tinyca.mo
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tinyca
	cd ${WRKSRC}/lib; tar cf - * | tar xf - -C ${PREFIX}/lib/tinyca

.include <bsd.port.mk>
