COMMENT=		update LDAP entries with a text editor

DISTNAME=		ldapvi-1.8
CATEGORIES=		editors

HOMEPAGE=		http://www.lichteblau.com/ldapvi.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses glib-2.0 intl lber ldap popt readline
WANTLIB += ssl

SITES=			http://www.lichteblau.com/download/

BUILD_DEPENDS=		textproc/libxslt

LIB_DEPENDS=		devel/glib2 \
			databases/openldap \
			devel/popt

MAKE_FILE=		GNUmakefile
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

pre-configure:
	sed -i "s,/etc/ldap,${SYSCONFDIR}/openldap,g" ${WRKSRC}/ldapvi.1

post-install:
# empty dir
	rmdir ${PREFIX}/share/doc/ldapvi/

.include <bsd.port.mk>
