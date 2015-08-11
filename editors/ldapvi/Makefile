# $OpenBSD: Makefile,v 1.20 2015/08/11 21:43:03 jasper Exp $

COMMENT=	update LDAP entries with a text editor

DISTNAME=	ldapvi-1.7
CATEGORIES=	editors

REVISION=	6

HOMEPAGE=	http://www.lichteblau.com/ldapvi.html

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses glib-2.0>=0.8 lber ldap popt pthread readline
WANTLIB += ssl

MASTER_SITES=	http://www.lichteblau.com/download/

MODULES=	devel/gettext
BUILD_DEPENDS=	textproc/libxslt
LIB_DEPENDS=	devel/glib2 \
		databases/openldap \
		devel/popt

MAKE_FILE=	GNUmakefile
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

pre-build:
	@sed -i "s,/etc/ldap,${SYSCONFDIR}/openldap,g" ${WRKSRC}/ldapvi.1

do-install:
	cd ${WRKSRC}/manual && ${MAKE_PROGRAM} ${MAKE_FILE} manual.html
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ldapvi
	${INSTALL_PROGRAM} ${WRKSRC}/ldapvi ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ldapvi.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/manual/bg.png \
		${WRKSRC}/manual/manual.css \
		${WRKSRC}/manual/manual.html ${PREFIX}/share/doc/ldapvi

.include <bsd.port.mk>
