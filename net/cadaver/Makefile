# $OpenBSD: Makefile,v 1.23 2013/06/20 06:54:37 ajacoutot Exp $

COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.23.3
REVISION=		3
CATEGORIES=		net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c crypto curses expat gssapi krb5 readline ssl
WANTLIB += com_err heimbase roken wind
WANTLIB += z neon proxy pthread

MODULES=		devel/gettext

LIB_DEPENDS=		net/neon

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-expat \
			--with-neon="${LOCALBASE}"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"
USE_GROFF =		Yes

.include <bsd.port.mk>
