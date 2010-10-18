# $OpenBSD: Makefile,v 1.16 2010/10/18 18:36:46 espie Exp $

COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.23.3
CATEGORIES=     	net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto curses expat gssapi krb5 readline ssl
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		neon::net/neon

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-expat \
			--with-neon="${LOCALBASE}"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
