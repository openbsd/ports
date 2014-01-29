# $OpenBSD: Makefile,v 1.62 2014/01/29 06:08:42 dcoppa Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.15
CATEGORIES =	net

HOMEPAGE =	https://www.gnu.org/software/wget/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto idn pcre ssl z
LIB_DEPENDS =		devel/libidn \
			devel/pcre

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}

MODULES =		devel/gettext

FAKE_FLAGS =           sysconfdir="${PREFIX}/share/examples/wget"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ssl=openssl
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
# do not pick up libuuid from sysutils/e2fsprogs
CONFIGURE_ENV +=	ac_cv_header_uuid_uuid_h=no

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
