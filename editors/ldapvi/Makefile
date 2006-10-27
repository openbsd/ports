# $OpenBSD: Makefile,v 1.3 2006/10/27 12:53:01 ajacoutot Exp $

COMMENT=	"update LDAP entries with a text editor"

DISTNAME=	ldapvi-1.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors

HOMEPAGE=	http://www.lichteblau.com/ldapvi.html

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.lichteblau.com/download/

WANTLIB=	c curses crypto

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.>=0.8::devel/glib2 \
		lber,ldap:openldap-client-*:databases/openldap \
		popt::devel/popt

MAKE_FILE=	GNUmakefile
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e "s,/etc/ldap,${SYSCONFDIR}/openldap,g" ${WRKSRC}/ldapvi.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/ldapvi ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ldapvi.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
